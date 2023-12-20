import { useEffect, useRef, useState } from "react";
import "bootstrap/dist/js/bootstrap.bundle.min.js";
import { Link } from "react-router-dom";
import empty_pfp from "../assets/img/empty-profile-picture-612x612.jpg";

interface NavbarComponentProps {
  handleNavbarHeightChange?: (height: number) => void;
}

const Navbar = ({ handleNavbarHeightChange }: NavbarComponentProps) => {
  const navbarRef = useRef<HTMLElement>(null);
  // let firebase_avatar_url = ""
  const [username, setUsername] = useState("");

  useEffect(() => {
    const navbarHeight = navbarRef.current ? navbarRef.current.clientHeight : 0;
    if (handleNavbarHeightChange) {
      handleNavbarHeightChange(navbarHeight);
    }
  }, [handleNavbarHeightChange]);

  useEffect(() => {
    const unparsed_user_details = localStorage.getItem("user_details");

    if (unparsed_user_details) {
      const user_details = JSON.parse(unparsed_user_details);

      // firebase_avatar_url = user_details.firebase_avatar_url;
      setUsername(user_details.Username);
    } else {
      console.log("User details not found.");
    }
  });

  const handleLogOut = () => {
    console.log("Logged out");
    localStorage.removeItem("user_details");
  };

  return (
    <nav ref={navbarRef} className="navbar navbar-expand-lg bg-body-tertiary">
      <div className="container-fluid">
        <a className="navbar-brand" href="/MainPage" style={{ fontFamily: "Courier New, monospace"}}>
          {username !== "" ? `Padayon, ${username}!` : "Padayon!"}
        </a>
        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarSupportedContent" style={{ fontFamily: "Courier New, monospace", color: "#fff" }}>
          <ul className="navbar-nav me-auto mb-2 mb-lg-0">
            <li className="nav-item">
              <Link
                to="/MainPage"
                className="nav-link active"
                aria-current="page"
              >
                Home
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/ProfilePage" className="nav-link">
                Profile
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/PostsPage" className="nav-link">
                Safe Space
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/MessagesPage" className="nav-link">
                Messages
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/TheWorldPage" className="nav-link">
                The World
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/SignIn" className="nav-link" onClick={handleLogOut}>
                Sign In
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/" className="nav-link">
                Register
              </Link>
            </li>
          </ul>
          <form className="d-flex me-3" role="search">
            <input
              className="form-control me-2"
              type="search"
              placeholder="Search"
              aria-label="Search"
            />
            <button className="btn btn-outline-primary" type="submit">
              Search
            </button>
          </form>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
