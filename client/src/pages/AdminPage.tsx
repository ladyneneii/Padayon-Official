import React, { useEffect, useState } from "react";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import WrongPage from "../components/WrongPage";
import empty_pfp from "../assets/img/empty-profile-picture-612x612.jpg";
import "../styles/pages/admins.css";
import { Link } from "react-router-dom";

interface PendingMHPProps {
  Username: string;
  license_number: string;
  firebase_avatar_url: string;
}

interface UsersSummarizedInfo {
  Username: string;
  Role: string;
  State: string;
  firebase_avatar_url: string;
}

const AdminPage = () => {
  const [role, setRole] = useState("");
  const [pendingMhps, setPendingMhps] = useState<PendingMHPProps[]>([]);
  const [allUsers, setAllUsers] = useState<UsersSummarizedInfo[]>([]);

  useEffect(() => {
    const unparsed_user_details = localStorage.getItem("user_details");

    if (unparsed_user_details) {
      const user_details = JSON.parse(unparsed_user_details);

      // firebase_avatar_url = user_details.firebase_avatar_url;
      setRole(user_details.Role);
    } else {
      console.log("User details not found.");
      setRole("");
    }

    const fetchPendingMhps = async () => {
      // console.log("This is logged in user Id: " + logged_in_user_id);
      try {
        const response = await fetch(`http://localhost:3001/api/pending_mhps/`);

        if (response.ok) {
          const pendingMhps_json = await response.json();

          console.log(pendingMhps_json);
          setPendingMhps(pendingMhps_json);
        } else {
          const error = await response.text();

          console.log(error);
        }
      } catch (error) {
        console.error("Error during GET request:", error);
      }
    };

    const fetchAllUsers = async () => {
      // console.log("This is logged in user Id: " + logged_in_user_id);
      try {
        const response = await fetch("http://localhost:3001/api/users");

        if (response.ok) {
          const allUsers_json = await response.json();

          console.log(allUsers_json);
          setAllUsers(allUsers_json);
        } else {
          const error = await response.text();

          console.log(error);
        }
      } catch (error) {
        console.error("Error during GET request:", error);
      }
    };

    fetchPendingMhps();
    fetchAllUsers();
  }, []);

  return (
    <>
      <Navbar></Navbar>
      {role !== "admin" ? (
        <WrongPage message="You cannot open this page because you are not an admin."></WrongPage>
      ) : (
        <>
          <div className="container mt-3">
            <div className="remove-row row">
              <div className="col mb-5">
                <h3 className="text-center mb-3">
                  Pending Mental Health Professionals
                </h3>
                {pendingMhps.map(
                  ({ Username, license_number, firebase_avatar_url }) => (
                    <Link
                      key={license_number}
                      to={`/ProfilePage/${Username}`}
                      className="pending-mhp"
                    >
                      <div className="d-flex align-items-center p-2 shadow pending-mhp-hover">
                        <div className="col text-center">
                          <img
                            src={
                              firebase_avatar_url === "n/a"
                                ? empty_pfp
                                : firebase_avatar_url
                            }
                            alt="profile picture"
                            className="rounded-circle empty_profile_picture_icon me-3"
                          />
                        </div>
                        <div className="col text-center p-0 inline-block">
                          {Username}
                        </div>
                        <div className="col text-center">{license_number}</div>
                        <div className="col text-center fw-bold text-secondary">
                          Unverified
                        </div>
                      </div>
                    </Link>
                  )
                )}
              </div>
              <div className="col mb-5">
                <h3 className="text-center mb-3">All Users</h3>
                <div className="all-users">
                  {allUsers.map(
                    ({ Username, Role, State, firebase_avatar_url }) => (
                      <Link
                        key={Username}
                        to={`/ProfilePage/${Username}`}
                        className="pending-mhp"
                      >
                        <div className="d-flex align-items-center p-2 shadow pending-mhp-hover">
                          <div className="col text-center">
                            <img
                              src={
                                firebase_avatar_url === "n/a"
                                  ? empty_pfp
                                  : firebase_avatar_url
                              }
                              alt="profile picture"
                              className="rounded-circle empty_profile_picture_icon me-3"
                            />
                          </div>
                          <div className="col text-center p-0 inline-block">
                            {Username}
                          </div>
                          <div className="col text-center">{Role}</div>
                          <div
                            className={`col text-center fw-bold ${
                              State === "Active"
                                ? "text-success"
                                : State === "Blocked"
                                ? "text-danger"
                                : "text-secondary"
                            }`}
                          >
                            {State}
                          </div>
                        </div>
                      </Link>
                    )
                  )}
                </div>
              </div>
            </div>
          </div>
        </>
      )}
      <Footer></Footer>
    </>
  );
};

export default AdminPage;
