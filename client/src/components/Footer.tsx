// Footer.js
import React from "react";
import "../styles/components/footer.css";
import Logo from "../assets/img/Logo.png";

const Footer = () => {
  return (
    <footer className="footer-distributed">
      <div className="footer-left">
        <div className="footer-left-centered">
          <img src={Logo} alt="Padayon Logo" className="padayon-logo" />
          <p className="footer-company-name">
            FlopQueens © {new Date().getFullYear()}
          </p>
        </div>
      </div>

      <div className="footer-center">
        <div>
          <i className="fa fa-map-marker"></i>
          <p>
            <span>Floptropica</span> Badussy Land
          </p>
        </div>

        <div>
          <i className="fa fa-phone"></i>
          <p>+1.555.555.5555</p>
        </div>

        <div>
          <i className="fa fa-envelope"></i>
          <p>
            <a href="mailto:flopqueens@gmail.com">flopqueens@gmail.com</a>
          </p>
        </div>
      </div>

      <div className="footer-right">
        <p className="footer-company-about">
          <span>About the company</span> We like and love to flop.
        </p>

        <div className="footer-icons">
          <a href="#">
            <i className="fa fa-facebook fa-white"></i>
          </a>
          <a href="#">
            <i className="fa fa-twitter fa-white"></i>
          </a>
          <a href="#">
            <i className="fa fa-linkedin fa-white"></i>
          </a>
          <a href="#">
            <i className="fa fa-github fa-white"></i>
          </a>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
