import React, { useState, useEffect } from "react";
import io from "socket.io-client";
import empty_pfp from "../assets/img/empty-profile-picture-612x612.jpg";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { useParams, useNavigate } from "react-router-dom";
import Button from "../components/Button";
import "../styles/pages/profile.css";
import Alert from "../components/Alert";

const socket = io("http://localhost:3001");

interface MHPFullInfoProps {
  user_id: string;
  Username: string;
  State: string;
  firebase_avatar_url: string;
  first_name: string;
  middle_name: string;
  last_name: string;
  Age: number;
  Gender: string;
  Pronouns: string;
  Role: string;
  disorders_specializations: string;
  Fees: string;
  years_of_experience: number;
  Languages: string;
  min_age: number;
  max_age: string;
  Notes: string;
  available_days: string;
  available_hours: string;
  Address: string;
  Latitude: string;
  Longitude: string;
  DistanceAway: { metersAway: number; kilometersAway: number };
}

const ProfilePage = () => {
  const navigate = useNavigate();
  const { user } = useParams<{ user?: string }>();
  const [userDetails, setUserDetails] = useState<MHPFullInfoProps | null>(null);
  const [loggedInUserId, setLoggedInUserId] = useState("");
  const [loggedInUsername, setLoggedInUsername] = useState("");
  const [loggedInRole, setLoggedInRole] = useState("");

  let username = "";
  let logged_in_user_id = "";
  let logged_in_username = "";

  const [errMsg, setErrMsg] = useState("");
  const [successMsg, setSuccessMsg] = useState("");
  const [isLoggedIn, setIsLoggedIn] = useState(true);
  const [dummyState, setDummyState] = useState(false);

  useEffect(() => {
    window.scrollTo(0, 0);

    const user_details_str = localStorage.getItem("user_details");

    if (user_details_str) {
      logged_in_user_id = JSON.parse(user_details_str).user_id;
      logged_in_username = JSON.parse(user_details_str).Username;
      setLoggedInRole(JSON.parse(user_details_str).Role);
    } else {
      console.error("user details not found in the local storage.");
      setErrMsg(
        "You are viewing this page as a guest. It is recommended to create an account so you have full access to our services."
      );
      setIsLoggedIn(false);
    }
    username = !user ? logged_in_username : user;

    setLoggedInUserId(logged_in_user_id);
    setLoggedInUsername(logged_in_username);

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords;

          const fetchUserDetails = async () => {
            try {
              const response = await fetch(
                `http://localhost:3001/api/mhp_nhp_with_user_info/${username},${latitude},${longitude}`
              );

              if (response.ok) {
                const user_details_json = await response.json();
                setUserDetails(user_details_json);
              } else {
                console.error("Failed to retrieve user");
              }
            } catch (error) {
              console.error("Error during GET request:", error);
            }
          };

          fetchUserDetails();
        },
        (error) => {
          // Error handling, including permission denial
          console.error(`Error getting geolocation: ${error.message}`);
        }
      );
    } else {
      console.error("Geolocation is not supported by your browser");
    }
  }, [dummyState]);

  const handleMessage = async (
    e: React.MouseEvent<HTMLButtonElement>,
    user_id: string,
    Username: string
  ) => {
    e.preventDefault();

    try {
      const formData = new FormData();

      formData.append("Member1", loggedInUsername);
      formData.append("Member2", Username);
      formData.append("Title", `${loggedInUsername}, ${Username}`);
      formData.append("State", "Active");
      formData.append("member1_user_id", loggedInUserId);
      formData.append("member2_user_id", user_id);

      const response = await fetch("http://localhost:3001/api/private_rooms", {
        method: "PUT",
        body: formData,
      });

      if (response.ok) {
        const private_room_id = await response.json();
        console.log(private_room_id);

        navigate("/MessagesPage");
      } else {
        console.error(
          "Failed to add private room to the database or fetch private room from the database."
        );
        console.log(response);

        return;
      }
    } catch (error) {
      console.error("Error during PUT request:", error);

      return;
    }
  };

  const handleBlockUser = async (
    e: React.MouseEvent<HTMLButtonElement>,
    user_id: string
  ) => {
    try {
      const response = await fetch(
        `http://localhost:3001/api/users_role/${user_id}/Blocked`,
        {
          method: "PATCH",
        }
      );

      if (response.ok) {
        console.log("Succesfully blocked user.");
        setDummyState((prev) => !prev);
      } else {
        console.log(response);

        return;
      }
    } catch (error) {
      console.error("Error during PATCH request:", error);

      return;
    }
  };

  const handleUnverifyMHP = async (
    e: React.MouseEvent<HTMLButtonElement>,
    user_id: string
  ) => {
    try {
      const response = await fetch(
        `http://localhost:3001/api/users_role/${user_id}/Unverified`,
        {
          method: "PATCH",
        }
      );

      if (response.ok) {
        console.log("Succesfully verified mhp.");
        setDummyState((prev) => !prev);
      } else {
        console.log(response);

        return;
      }
    } catch (error) {
      console.error("Error during PATCH request:", error);

      return;
    }
  };

  const handleVerifyMHP = async (
    e: React.MouseEvent<HTMLButtonElement>,
    user_id: string
  ) => {
    try {
      const response = await fetch(
        `http://localhost:3001/api/users_role/${user_id}/Active`,
        {
          method: "PATCH",
        }
      );

      if (response.ok) {
        console.log("Succesfully verified mhp.");
        setDummyState((prev) => !prev);
      } else {
        console.log(response);

        return;
      }
    } catch (error) {
      console.error("Error during PATCH request:", error);

      return;
    }
  };

  return (
    <>
      <Navbar />
      {errMsg && (
        <Alert color="danger" setErrMsg={setErrMsg}>
          {errMsg}
        </Alert>
      )}
      {successMsg && (
        <Alert color="success" setErrMsg={setSuccessMsg}>
          {successMsg}
        </Alert>
      )}
      <div className="container mt-3 p-3 profile-container">
        {userDetails ? (
          // Destructure userDetails outside JSX
          (() => {
            const {
              user_id,
              first_name,
              middle_name,
              last_name,
              Username,
              Role,
              Age,
              Gender,
              Pronouns,
              DistanceAway,
              State,
              disorders_specializations,
              years_of_experience,
              Languages,
              available_days,
              available_hours,
              Fees,
              Address,
              Notes,
              firebase_avatar_url,
            } = userDetails;

            let disorders_specializations_arr: string[] = [];
            if (disorders_specializations) {
              const modifiedString: string = disorders_specializations.replace(
                /-|(and)|(\b\w)/g,
                (match, and, letter) =>
                  and ? "and" : letter ? letter.toUpperCase() : " "
              );
              disorders_specializations_arr = modifiedString.split(", ");
            }

            let availableDays = "";
            if (available_days) {
              availableDays = available_days
                .split(", ")
                .map((day) => day.charAt(0).toUpperCase() + day.slice(1))
                .join(", ");
            }

            let feesWithPeso = "";
            if (Fees) {
              feesWithPeso = Fees.includes("-above")
                ? Fees.replace("-above", "+")
                : Fees;

              feesWithPeso = feesWithPeso
                .split(", ")
                .map((range) =>
                  range
                    .split("-")
                    .map((amount) => `₱${amount}`)
                    .join("-")
                )
                .join(", ");
            }

            let showMhpSection =
              (Role === "mhp" && State === "Active") ||
              (Role === "mhp" &&
                State === "Unverified" &&
                loggedInRole === "admin") ||
              (Role === "mhp" && Username === loggedInUsername);

            return (
              <div className="remove-row row">
                <div className="col">
                  <img
                    src={
                      firebase_avatar_url === "n/a"
                        ? empty_pfp
                        : firebase_avatar_url
                    }
                    alt="User avatar"
                    className="border rounded-circle profile-picture"
                  />
                  <h2 className="mt-4">
                    {first_name} {middle_name} {last_name}{" "}
                    <span className="text-body-tertiary">({Username})</span>
                  </h2>
                  <h4>
                    {Role === "mhp" && State === "Active"
                      ? "Mental Health Professional"
                      : Role === "nmhp" ||
                        (Role === "mhp" && State === "Unverified")
                      ? "Not a Mental Health Professional"
                      : "Admin"}
                  </h4>
                  <h4>{Age}</h4>
                  <h4>{Gender === "PNTS" ? "" : Gender}</h4>
                  <h4>{Pronouns}</h4>
                  {DistanceAway && (
                    <h6 className="text-secondary">
                      {DistanceAway.metersAway} m away /{" "}
                      {DistanceAway.kilometersAway} km away from you.
                    </h6>
                  )}
                  <div className="mt-3">
                    {Username != loggedInUsername && (
                      <Button
                        color="primary"
                        onClick={(e) => handleMessage(e, user_id, Username)}
                        disabled={!isLoggedIn}
                      >
                        Message
                      </Button>
                    )}
                    {loggedInRole === "admin" &&
                      Role !== "admin" &&
                      (State !== "Unverified" ? (
                        <Button
                          color="danger"
                          onClick={(e) => handleUnverifyMHP(e, user_id)}
                        >
                          Unverify
                        </Button>
                      ) : (
                        <Button
                          color="primary"
                          onClick={(e) => handleVerifyMHP(e, user_id)}
                        >
                          Verify
                        </Button>
                      ))}
                    {loggedInRole === "admin" &&
                      Role !== "admin" &&
                      (State !== "Blocked" ? (
                        <Button
                          color="danger"
                          onClick={(e) => handleBlockUser(e, user_id)}
                          disabled={!isLoggedIn}
                        >
                          Block
                        </Button>
                      ) : (
                        <Button
                          color="primary"
                          // use the same function as verifymhp since it just sets user's state to active, which is what unblocking does as well.
                          onClick={(e) => handleVerifyMHP(e, user_id)}
                          disabled={!isLoggedIn}
                        >
                          Unblock
                        </Button>
                      ))}
                  </div>
                </div>

                <div className="col">
                  {Role === "mhp" &&
                    State === "Unverified" &&
                    loggedInRole === "admin" && (
                      <h3 className="text-danger mb-3">
                        ONLY VISIBLE TO ADMINS:
                      </h3>
                    )}
                  {Username === loggedInUsername && State === "Unverified" && (
                    <h3 className="text-danger mb-3">
                      MENTAL HEALTH PROFESSIONAL APPLICATION
                    </h3>
                  )}
                  {showMhpSection && (
                    <>
                      <div className="mt-2">
                        <h5>Disorders Specializations:</h5>
                        <div>
                          {disorders_specializations_arr.map(
                            (disorders_specialization, index) => (
                              <p key={index} className="my-0 ms-4">
                                {disorders_specialization}
                              </p>
                            )
                          )}
                        </div>
                      </div>
                      <div className="mt-2">
                        <h5>Years of Experience:</h5>
                        <p className="my-0 ms-4">{years_of_experience} years</p>
                      </div>
                      <div className="mt-2">
                        <h5>Spoken Languages:</h5>
                        <p className="my-0 ms-4">{Languages}</p>
                      </div>
                      <div className="mt-2">
                        <h5>Available Days:</h5>
                        <p className="my-0 ms-4">{availableDays}</p>
                      </div>
                      <div className="mt-2">
                        <h5>Available Hours:</h5>
                        <p className="my-0 ms-4">{available_hours}</p>
                      </div>
                      <div className="mt-2">
                        <h5>Fees:</h5>
                        <p className="my-0 ms-4">{feesWithPeso}</p>
                      </div>
                      <div className="mt-2">
                        <h5>Address:</h5>
                        <p className="my-0 ms-4">
                          {Address === "n/a" ? "Not indicated." : Address}
                        </p>
                      </div>
                      <div className="mt-2">
                        <h5>Notes:</h5>
                        <p className="my-0 ms-4">{Notes}</p>
                      </div>
                    </>
                  )}
                </div>
              </div>
            );
          })()
        ) : (
          <p>
            User info not found. If you registered as a mental health
            professional, please answer the MHPForm upon signing in to see your
            account here.
          </p>
        )}
      </div>
      <Footer></Footer>
    </>
  );
};

export default ProfilePage;
