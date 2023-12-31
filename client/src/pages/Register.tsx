import { useRef, useState, useEffect, ChangeEvent } from "react";
import { useNavigate } from "react-router-dom";
import {
  faCheck,
  faTimes,
  faInfoCircle,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import "bootstrap/dist/css/bootstrap.min.css";
import "../styles/index.css";
import Button from "../components/Button";
import { Link } from "react-router-dom";
import { createUserWithEmailAndPassword, updateProfile } from "firebase/auth";
import { auth, storage } from "../firebase";
import { ref, uploadBytesResumable, getDownloadURL } from "firebase/storage";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Alert from "../components/Alert";
import LoadingAnimation from "../components/LoadingAnimation";

export interface UserProps {
  user_id: string;
  Username: string;
  Email: string;
  Password: string;
  avatar_url: File | string;
  Role: "admin" | "mhp" | "nmhp";
  register_date: string;
  State: "Active" | "Pending" | "Blocked" | "Unverified";
  first_name: string;
  middle_name: string;
  last_name: string;
  Age: string;
  Gender: string;
  Pronouns: string;
  firebase_avatar_url: string;
}

const USER_REGEX = /^[A-z][A-z0-9-_]{3,23}$/;
const EMAIL_REGEX = /^\S+@\S+\.\S+$/;
const PWD_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%_=+]).{8,24}$/;

const Register = () => {
  const navigate = useNavigate();
  const [isLoading, setIsLoading] = useState(false);
  const [alert, setAlert] = useState(false);

  const firstNameRef = useRef<HTMLInputElement | null>(null);
  const errRef = useRef<HTMLDivElement | null>(null);

  const [firstName, setFirstName] = useState("");
  const [validFirstName, setValidFirstName] = useState(false);

  const middleNameRef = useRef<HTMLInputElement>(null);

  const [lastName, setLastName] = useState("");
  const [validLastName, setValidLastName] = useState(false);

  const [age, setAge] = useState("");
  const [validAge, setValidAge] = useState(false);

  const genderRef = useRef<HTMLSelectElement>(null);

  const pronounsRef = useRef<HTMLInputElement>(null);

  const [user, setUser] = useState("");
  const [validUser, setValidUser] = useState(false);
  const [userFocus, setUserFocus] = useState(false);

  const [email, setEmail] = useState("");
  const [validEmail, setValidEmail] = useState(false);
  const [emailFocus, setEmailFocus] = useState(false);

  const [pwd, setPwd] = useState("");
  const [validPwd, setValidPwd] = useState(false);
  const [pwdFocus, setPwdFocus] = useState(false);

  const [matchPwd, setMatchPwd] = useState("");
  const [validMatch, setValidMatch] = useState(false);
  const [matchFocus, setMatchFocus] = useState(false);

  const [selectedUserType, setSelectedUserType] = useState("nmhp");
  const [notVerifiedProfessional, setNotVerifiedProfessional] = useState(true);

  const fileInputRef = useRef<HTMLInputElement | null>(null);

  const [errMsg, setErrMsg] = useState("");
  const [success, setSuccess] = useState(false);

  useEffect(() => {
    firstNameRef.current?.focus();
  }, []);

  useEffect(() => {
    const result = USER_REGEX.test(user);
    // console.log(result);
    // console.log(user);
    setValidUser(result);
  }, [user]);

  useEffect(() => {
    const result = EMAIL_REGEX.test(email);
    // console.log(result);
    // console.log(email);
    setValidEmail(result);
  }, [email]);

  useEffect(() => {
    const result = PWD_REGEX.test(pwd);
    // console.log(result);
    // console.log(pwd);
    setValidPwd(result);

    const match = pwd === matchPwd;
    setValidMatch(match);
  }, [pwd, matchPwd]);

  useEffect(() => {
    setErrMsg("");
  }, [user, pwd, matchPwd]);

  useEffect(() => {
    if (success) {
      if (selectedUserType !== "nmhp" && notVerifiedProfessional) {
        navigate("/MHPFormPage");
      } else {
        navigate("/MainPage");
      }
    }
  }, [success, selectedUserType, notVerifiedProfessional]);

  const handleFirstNameChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newFirstName = e.target.value;
    setValidFirstName(newFirstName.length === 0 ? false : true);
    setFirstName(newFirstName);
  };

  const handleLastNameChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newLastName = e.target.value;
    setValidLastName(newLastName.length === 0 ? false : true);
    setLastName(newLastName);
  };

  const handleAgeChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newAge = e.target.value;
    setValidAge(newAge.length === 0 ? false : true);
    setAge(newAge);
  };

  const handleUserTypeChange = (e: ChangeEvent<HTMLInputElement>) => {
    setSelectedUserType(e.target.value);
  };

  // submit buttons
  const handleSubmit = async (e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    setIsLoading(true);
    // if button enabled with JS hack
    const v1 = USER_REGEX.test(user);
    const v2 = EMAIL_REGEX.test(email);
    const v3 = PWD_REGEX.test(pwd);
    const file = fileInputRef.current?.files?.[0] || "n/a";
    if (!v1 || !v2 || !v3) {
      setErrMsg("Invalid Entry");
      setAlert(true);
      setIsLoading(false);
      return;
    }

    if (!age || parseInt(age, 10) <= 0 || parseInt(age, 10) >= 150) {
      setErrMsg("Please enter a valid age.");
      setAlert(true);
      setIsLoading(false);
      return;
    }

    // Make a request here to /api/users to get the record with the inputted user (if it exists)
    try {
      const response = await fetch(
        `http://localhost:3001/api/username_check/${user}`
      );

      if (response.ok) {
        console.log("This is a unique username.");
      } else {
        console.error("This username already exists.");
        setErrMsg("This username already exists.");
        setAlert(true);
        setIsLoading(false);

        return;
      }
    } catch (error) {
      console.error("Error during GET request:", error);
      setErrMsg("Error during GET request:");
      setAlert(true);
      setIsLoading(false);

      return;
    }

    // Make a request here to /api/users to get the record with the inputted email (if it exists)
    try {
      const response = await fetch(
        `http://localhost:3001/api/email_check/${email}`
      );

      if (response.ok) {
        console.log("This is a unique email.");
      } else {
        console.error("This email already exists.");
        setErrMsg("This email already exists.");
        setAlert(true);
        setIsLoading(false);

        return;
      }
    } catch (error) {
      console.error("Error during GET request:", error);
      setErrMsg("Error during GET request:");
      setAlert(true);
      setIsLoading(false);

      return;
    }

    const addDataToDb = async (downloadURL: string) => {
      const formData = new FormData();
      const register_date = new Date()
        .toISOString()
        .slice(0, 19)
        .replace("T", " ");
      const state =
        selectedUserType === "mhp" && notVerifiedProfessional
          ? "Unverified"
          : "Active";

      const middleName = middleNameRef.current
        ? middleNameRef.current.value
        : "";
      const gender = genderRef.current ? genderRef.current.value : "PNTS";
      const pronouns = pronounsRef.current ? pronounsRef.current.value : "";

      formData.append("Username", user);
      formData.append("Email", email);
      formData.append("Password", pwd);
      formData.append("avatar_url", file);
      formData.append("Role", selectedUserType);
      formData.append("register_date", register_date);
      formData.append("State", state);
      formData.append("first_name", firstName);
      formData.append("middle_name", middleName);
      formData.append("last_name", lastName);
      formData.append("Age", age);
      formData.append("Gender", gender);
      formData.append("Pronouns", pronouns);
      formData.append("firebase_avatar_url", downloadURL || "n/a");

      // add data to database
      try {
        // Make a POST request to server endpoint
        const response = await fetch("http://localhost:3001/api/users", {
          method: "POST",
          body: formData,
        });

        if (response.ok) {
          console.log("Avatar uploaded successfully.");
          console.log(user, email, pwd);
          setIsLoading(false);
          setSuccess(true);

          const user_id = await response.json();
          console.log(`Inserted id: ${user_id}`);

          // for localStorage
          const user_details: UserProps = {
            user_id,
            Username: user,
            Email: email,
            Password: pwd,
            avatar_url: file,
            Role: selectedUserType as "admin" | "mhp" | "nmhp",
            register_date,
            State: state,
            first_name: firstName,
            middle_name: middleName,
            last_name: lastName,
            Age: age,
            Gender: gender,
            Pronouns: pronouns,
            firebase_avatar_url: downloadURL || "n/a",
          };

          // add to localStorage
          localStorage.setItem("user_details", JSON.stringify(user_details));
        } else {
          console.error("Failed to add user to the database");
          setErrMsg("Failed to add user to the database");
          setAlert(true);
          setIsLoading(false);

          return;
        }
      } catch (error) {
        console.error("Error during POST request:", error);
        setErrMsg("Error during POST request:");
        setAlert(true);
        setIsLoading(false);

        return;
      }
    };

    // firebase
    try {
      const res = await createUserWithEmailAndPassword(auth, email, pwd);
      // user.png, yaskween.png, ladyneneii.png
      const storageRef = ref(storage, user);

      // user inputted a profile picture
      if (file !== "n/a") {
        const uploadTask = uploadBytesResumable(storageRef, file);

        uploadTask.on(
          "state_changed",
          (snapshot) => {
            const progress =
              (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
            console.log("Upload is " + progress + "% done");
            switch (snapshot.state) {
              case "paused":
                console.log("Upload is paused");
                break;
              case "running":
                console.log("Upload is running");
                break;
            }
          },
          (error) => {
            setErrMsg("Error uploading display picture.");
            setAlert(true);
            setIsLoading(false);
          },
          () => {
            getDownloadURL(uploadTask.snapshot.ref).then(
              async (downloadURL) => {
                console.log(downloadURL);

                addDataToDb(downloadURL);

                await updateProfile(res.user, {
                  displayName: user,
                  photoURL: downloadURL,
                });
              }
            );
          }
        );
      } else {
        // user did not put a profile picture
        addDataToDb("n/a");
      }
    } catch (err) {
      setErrMsg("Something went wrong. Try again.");
      setAlert(true);
      setIsLoading(false);
    }
  };

  return (
    <>
      <Navbar></Navbar>
      {errMsg && (
        <Alert color="danger" setErrMsg={setErrMsg}>
          {errMsg}
        </Alert>
      )}
      {isLoading && <LoadingAnimation></LoadingAnimation>}

      <section className="container-sm py-5">
        <p
          ref={errRef}
          className={errMsg ? "errmsg" : "offscreen"}
          aria-live="assertive"
        >
          {errMsg}
        </p>
        <h1>Register</h1>
        {/* START OF FORM */}
        <form>
          {/* first name */}
          <div className="mb-3">
            <label htmlFor="firstName" className="form-label">
              First Name:
            </label>
            <input
              type="text"
              id="firstName"
              ref={firstNameRef}
              required
              className="form-control"
              onChange={handleFirstNameChange}
            />
          </div>

          {/* middle name */}
          <div className="mb-3">
            <label htmlFor="middleName" className="form-label">
              Middle Name:
            </label>
            <input
              type="text"
              id="middleName"
              ref={middleNameRef}
              className="form-control"
              placeholder="Skip if you don't have any."
            />
          </div>

          {/* last name */}
          <div className="mb-3">
            <label htmlFor="lastName" className="form-label">
              Last Name:
            </label>
            <input
              type="text"
              id="lastName"
              required
              className="form-control"
              onChange={handleLastNameChange}
            />
          </div>

          {/* username */}
          <div className="mb-3">
            <label htmlFor="username" className="form-label">
              Username:
              <FontAwesomeIcon
                icon={faCheck}
                className={`custom-check-icon ${validUser ? "valid" : "hide"}`}
              />
              <FontAwesomeIcon
                icon={faTimes}
                className={`custom-times-icon ${
                  validUser || !user ? "hide" : "invalid"
                }`}
              />
            </label>
            <input
              type="text"
              id="username"
              autoComplete="off"
              onChange={(e) => setUser(e.target.value)}
              value={user}
              required
              aria-invalid={validUser ? "false" : "true"}
              aria-describedby="uidnote"
              onFocus={() => setUserFocus(true)} // input has focus
              onBlur={() => setUserFocus(false)} // input doesn't have focus anymore
              className="form-control"
            />
            <p
              id="uidnote"
              className={
                userFocus && user && !validUser ? "instructions" : "offscreen"
              }
            >
              <FontAwesomeIcon icon={faInfoCircle} />
              4 to 24 characters.
              <br />
              Must begin with a letter.
              <br />
              Letters, numbers, underscores, hyphens allowed.
            </p>
          </div>

          {/* email */}
          <div className="mb-3">
            <label htmlFor="email" className="form-label">
              Email:
              <FontAwesomeIcon
                icon={faCheck}
                className={`custom-check-icon ${validEmail ? "valid" : "hide"}`}
              />
              <FontAwesomeIcon
                icon={faTimes}
                className={`custom-times-icon ${
                  validEmail || !email ? "hide" : "invalid"
                }`}
              />
            </label>
            <input
              type="email"
              id="email"
              autoComplete="off"
              onChange={(e) => setEmail(e.target.value)}
              value={email}
              required
              aria-invalid={validEmail ? "false" : "true"}
              aria-describedby="eidnote"
              onFocus={() => setEmailFocus(true)} // input has focus
              onBlur={() => setEmailFocus(false)} // input doesn't have focus anymore
              className="form-control"
            />
            <p
              id="eidnote"
              className={
                emailFocus && email && !validEmail
                  ? "instructions"
                  : "offscreen"
              }
            >
              <FontAwesomeIcon icon={faInfoCircle} />
              Must have an @ symbol followed by a domain name.
              <br />
              No spaces allowed.
              <br />
              Letters, numbers, underscores, hyphens allowed.
            </p>
          </div>

          {/* password */}
          <div className="mb-3">
            <label htmlFor="password" className="form-label">
              Password:
              <FontAwesomeIcon
                icon={faCheck}
                className={`custom-check-icon ${validPwd ? "valid" : "hide"}`}
              />
              <FontAwesomeIcon
                icon={faTimes}
                className={`custom-times-icon ${
                  validPwd || !pwd ? "hide" : "invalid"
                }`}
              />
            </label>
            <input
              type="password"
              id="password"
              onChange={(e) => setPwd(e.target.value)}
              required
              aria-invalid={validPwd ? "false" : "true"}
              aria-describedby="pwdnote"
              onFocus={() => setPwdFocus(true)}
              onBlur={() => setPwdFocus(false)}
              className="form-control"
            />
            <p
              id="pwdnote"
              className={pwdFocus && !validPwd ? "instructions" : "offscreen"}
            >
              <FontAwesomeIcon icon={faInfoCircle} />
              8 to 24 characters.
              <br />
              Must include uppercase and lowercase letters, a number and a
              special character.
              <br />
              Allowed special characters:{" "}
              <span aria-label="exclamation mark">!</span>{" "}
              <span aria-label="at symbol">@</span>{" "}
              <span aria-label="hashtag">#</span>{" "}
              <span aria-label="dollar sign">$</span>{" "}
              <span aria-label="percent">%</span>
            </p>
          </div>

          {/* match password */}
          <div className="mb-3">
            <label htmlFor="confirm_pwd" className="form-label">
              Confirm Password:
              <FontAwesomeIcon
                icon={faCheck}
                className={`custom-check-icon ${
                  validMatch && matchPwd ? "valid" : "hide"
                }`}
              />
              <FontAwesomeIcon
                icon={faTimes}
                className={`custom-times-icon ${
                  validMatch || !matchPwd ? "hide" : "invalid"
                }`}
              />
            </label>
            <input
              type="password"
              id="confirm_pwd"
              onChange={(e) => setMatchPwd(e.target.value)}
              value={matchPwd}
              required
              aria-invalid={validMatch ? "false" : "true"}
              aria-describedby="confirmnote"
              onFocus={() => setMatchFocus(true)}
              onBlur={() => setMatchFocus(false)}
              className="form-control"
            />
            <p
              id="confirmnote"
              className={
                matchFocus && !validMatch ? "instructions" : "offscreen"
              }
            >
              <FontAwesomeIcon icon={faInfoCircle} />
              Must match the first password input field.
            </p>
          </div>

          {/* Mental health professional or not */}
          <div className="mb-3">
            <label htmlFor="user-type" className="form-label">
              Type of User:
            </label>
            <div className="form-check">
              <input
                className="form-check-input"
                type="radio"
                name="userType"
                id="nmhp"
                value="nmhp"
                checked={selectedUserType === "nmhp"}
                onChange={handleUserTypeChange}
              />
              <label className="form-check-label" htmlFor="nmhp_label">
                I am not a mental health professional (NMHP).
              </label>
            </div>
            <div className="form-check">
              <input
                className="form-check-input"
                type="radio"
                name="userType"
                id="mhp"
                value="mhp"
                checked={selectedUserType === "mhp"}
                onChange={handleUserTypeChange}
              />
              <label className="form-check-label" htmlFor="mhp_label">
                I am a mental health professional (MHP).
              </label>
            </div>
          </div>

          {/* age, gender, pronouns */}
          <div className="row">
            <div className="mb-3 col">
              <label className="form-label">Age</label>
              <input
                type="number"
                className="form-control"
                id="age"
                onChange={handleAgeChange}
                required
              />
            </div>

            <div className="mb-3 col">
              <label className="form-label">Gender (Optional)</label>
              <select
                className="form-select"
                id="gender"
                ref={genderRef}
                defaultValue="PNTS"
              >
                <option value="PNTS">Prefer not to say</option>
                <option value="Woman">Woman</option>
                <option value="Non-Binary">Non-Binary</option>
                <option value="Man">Man</option>
                <option value="Others">Others</option>
              </select>
            </div>

            <div className="mb-3 col">
              <label className="form-label">Pronouns (Optional)</label>
              <input
                type="text"
                className="form-control"
                id="pronouns"
                ref={pronounsRef}
                placeholder="e.g. she/her, he/him, they/them, etc."
              />
            </div>
          </div>

          {/* Upload Picture */}
          <div className="mb-3">
            <label htmlFor="display-pic" className="form-label">
              Upload display picture (Optional):
            </label>
            <input
              type="file"
              className="form-control"
              id="display-pic"
              ref={fileInputRef}
            />
          </div>

          {/* Button */}
          <Button
            color="primary"
            onClick={handleSubmit}
            disabled={
              !validFirstName ||
              !validLastName ||
              !validAge ||
              !validUser ||
              !validPwd ||
              !validMatch
            }
          >
            Sign Up
          </Button>
        </form>
        {/* END OF FORM */}
        <p>
          <label className="form-label mt-2 me-2">Already registered?</label>

          <span className="line">
            {/*put router link here*/}
            <Link to="/SignIn">Sign In</Link>
          </span>
        </p>
      </section>
      <Footer></Footer>
    </>
  );
};

export default Register;
