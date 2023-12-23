import { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Route,
  Routes,
  useParams,
} from "react-router-dom";
import Register from "./pages/Register";
import SignIn from "./pages/SignIn";
import MHPFormPage from "./pages/MHPFormPage";
import MainPage from "./pages/MainPage";
import PostsPage from "./pages/PostsPage";
import MessagesPage from "./pages/MessagesPage";
import TheWorldPage from "./pages/TheWorldPage";
import ProfilePage from "./pages/ProfilePage";
import AdminPage from "./pages/AdminPage";
import AboutPage from "./pages/AboutPage";
import io from "socket.io-client";
import WrongPage from "./components/WrongPage";

const socket = io("http://localhost:3001");

const App = () => {
  const [userState, setUserState] = useState("")
  useEffect(() => {
    let logged_in_user_state = ""

    const user_details_str = localStorage.getItem("user_details");
    if (user_details_str) {
      logged_in_user_state = JSON.parse(user_details_str).State;
      setUserState(logged_in_user_state)
    } else {
      console.error("user details not found in the local storage.");
    }
  }, []);

  return (
    <main className="App">
      <Router>
        {userState !== "Blocked" ? (
          <Routes>
            <Route path="/" element={<Register />} />
            <Route path="/SignIn" element={<SignIn />} />
            <Route path="/MHPFormPage" element={<MHPFormPage />} />
            <Route path="/MainPage" element={<MainPage />} />
            <Route path="/ProfilePage" element={<ProfilePage />} />
            <Route path="/ProfilePage/:user" element={<ProfilePage />} />
            <Route path="/PostsPage" element={<PostsPage />} />
            <Route path="/MessagesPage" element={<MessagesPage />} />
            <Route path="/TheWorldPage" element={<TheWorldPage />} />
            <Route path="/AdminPage" element={<AdminPage />} />
            <Route path="/AboutPage" element={<AboutPage />} />
          </Routes>
        ) : (
          <Routes>
            <Route path="/WrongPage" element={<WrongPage message="Your account is blocked. Please message of the admins to resolve this issue." />} />
          </Routes>
        )}
      </Router>
    </main>
  );
};

export default App;
