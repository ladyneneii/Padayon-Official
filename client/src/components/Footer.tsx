// Footer.js
import React from "react";
import "../styles/components/footer.css";
import Logo from "../assets/img/Logo.png";
const Footer = () => {
  return (
    <footer className="footer-distributed">
      <div className="footer-left">
      <img src={Logo} alt="Logo" style={{ width: "450px", height: "auto", paddingBottom: "20px" }}/>
        
        <p className="footer-company-name" style={{ color: "#8f9296", fontSize: "20px", paddingLeft: "130px" }}>
          FlopQueens © 2023
        </p>
      </div>

      <div className="footer-center">
        <div>
          <i className="fa fa-map-marker"></i>
          <p style={{ fontFamily: "Courier New, monospace", color: "#fff" }}>
            <span style ={{ fontFamily: "Courier New, monospace"}}>Floptropica</span> Badussy Land
          </p>
        </div>

        <div>
          <i className="fa fa-phone"></i>
          <p style={{ fontFamily: "Courier New, monospace", color: "#fff" }}>+1.555.555.5555</p>
        </div>

        <div>
          <i className="fa fa-envelope"></i>
          <p style={{ fontFamily: "Courier New, monospace", color: "#fff" }}>
            <a href="mailto:flopqueens@gmail.com" style={{ color: "#fff" }}>
              flopqueens@gmail.com
            </a>
          </p>
        </div>
      </div>

      <div className="footer-right">
        <p className="footer-company-about" style={{ fontFamily: "Courier New, monospace", color: "#fff", fontSize: "14px" }}>
          <span style={{ fontFamily: "Courier New, monospace", fontWeight: "bold", fontSize: "20px" }}>About the company</span> We like and love to flop.
        </p>

        <div className="footer-icons">
          <a href="#" style={{ color: "#fff" }}>
            <i className="fa fa-facebook"></i>
          </a>
          <a href="#" style={{ color: "#fff" }}>
            <i className="fa fa-twitter"></i>
          </a>
          <a href="#" style={{ color: "#fff" }}>
            <i className="fa fa-linkedin"></i>
          </a>
          <a href="#" style={{ color: "#fff" }}>
            <i className="fa fa-github"></i>
          </a>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
