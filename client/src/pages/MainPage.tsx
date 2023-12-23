import React, { useEffect, useState } from "react";
import "firebase/storage";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Alert from "../components/Alert";
import Card from "../components/Card";

interface MHPCardDisplayInfoProps {
  Username: string;
  firebase_avatar_url: string;
  first_name: string;
  middle_name: string;
  last_name: string;
  disorders_specializations: string;
  DistanceAway: { metersAway: number; kilometersAway: number };
}

const MainPage = () => {
  const [alert, setAlert] = useState(false);
  const [location, setLocation] = useState<{
    latitude: number;
    longitude: number;
  } | null>(null);
  const [errMsg, setErrMsg] = useState<string>("");
  const [allMhps, setAllMhps] = useState<MHPCardDisplayInfoProps[]>([]);

  useEffect(() => {
    const fetchAllMHPs = async () => {
      try {
        const response = await fetch(
          "http://localhost:3001/api/mhps_with_user_info"
        );

        if (response.ok) {
          const mhps_json = await response.json();
          console.log(mhps_json);
          setAllMhps(mhps_json);
        } else {
          console.error("Failed to retrieve all mhps");
        }
      } catch (error) {
        console.error("Error during GET request:", error);
      }
    };

    const fetchAllMHPsOrdered = async (lat: number, lon: number) => {
      try {
        const response = await fetch(
          `http://localhost:3001/api/mhps_with_user_info_ordered/${lat},${lon}`
        );

        if (response.ok) {
          const mhps_json = await response.json();
          console.log("Here are the ordered mhps:");
          console.log(mhps_json);
          setAllMhps(mhps_json);
        } else {
          console.error("Failed to retrieve all ordered mhps");
        }
      } catch (error) {
        console.error("Error during GET request:", error);
      }
    };

    const putLocation = async (latitude: number, longitude: number) => {
      const unparsed_user_details = localStorage.getItem("user_details");

      if (unparsed_user_details) {
        // only add location to database if user is an mhp
        if (JSON.parse(unparsed_user_details)?.Role === "mhp") {
          const user_id = JSON.parse(unparsed_user_details)?.user_id;
          const logged_in_role = JSON.parse(unparsed_user_details)?.Role;
          // Get mhp_id and location from mhp user
          try {
            const response = await fetch(
              `http://localhost:3001/api/location_check/${user_id}`
            );

            if (response.ok) {
              const { user_id, location_id } = await response.json();
              const formData = new FormData();

              formData.append("user_id", user_id);
              formData.append("location_id", location_id);
              formData.append("Latitude", latitude.toString());
              formData.append("Longitude", longitude.toString());
              formData.append("Address", "n/a");

              // add location to database
              try {
                // Make a PUT request to server endpoint
                const response = await fetch(
                  "http://localhost:3001/api/locations",
                  {
                    method: "PUT",
                    body: formData,
                  }
                );

                if (response.ok) {
                  console.log("Successfully added/updated location.");
                } else {
                  console.error(
                    "Failed to add/update location to the database"
                  );
                }
              } catch (error) {
                console.error("Error during POST request:", error);
              }
            } else {
              console.error("Something is wrong.");

              return;
            }
          } catch (error) {
            console.error("Error during GET request:", error);

            return;
          }
        }
      } else {
        console.log("No user_details retrieved.");
        setErrMsg(
          "You are viewing this page as a guest. It is recommended to create an account so you have full access to our services."
        );
      }
    };

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords;
          setLocation({ latitude, longitude });
          setErrMsg("");
          console.log(`This is the location: ${latitude} ${longitude}`);
          putLocation(latitude, longitude);
          fetchAllMHPsOrdered(latitude, longitude);
        },
        (error) => {
          // Error handling, including permission denial
          setErrMsg(`Error getting geolocation: ${error.message}`);
          fetchAllMHPs();
        }
      );
    } else {
      setErrMsg("Geolocation is not supported by your browser");
    }
  }, []);

  return (
    <>
      <Navbar></Navbar>
      {errMsg && (
        <Alert color="danger" setErrMsg={setErrMsg}>
          {errMsg}
        </Alert>
      )}
      <div className="container text-center mt-2">
        <h1 className="text-center mb-4 pt-5">
          Mental Health Professionals Near Me
        </h1>
        <div className="row border-primary">
          {allMhps.map(
            ({
              Username,
              firebase_avatar_url,
              first_name,
              middle_name,
              last_name,
              DistanceAway,
              disorders_specializations,
            }) => (
              <div
                key={Username}
                className="col text-center d-flex justify-content-center "
              >
                <Card
                  Username={Username}
                  firebase_avatar_url={firebase_avatar_url}
                  first_name={first_name}
                  middle_name={middle_name}
                  last_name={last_name}
                  DistanceAway={DistanceAway}
                  disorders_specializations={disorders_specializations}
                ></Card>
              </div>
            )
          )}
        </div>
      </div>
      <Footer></Footer>
    </>
  );
};

export default MainPage;
