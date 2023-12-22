import React from "react";
import "../styles/pages/about.css";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Logo from "../assets/img/Logo.png";
import Nene from "../assets/img/nene.jpg";
import Neil from "../assets/img/neil.jpg";

const AboutPage = () => {
  return (
    <>
      <Navbar></Navbar>
      <div className="container text-center">
        <img src={Logo} alt="Padayon Logo" className="about__logo" />
        <h1 className="about__desc">
          "Padayon" is a Cebuano word which means to continue, to proceed, to
          carry on, to live on, and ultimately, to not give up. The semicolon
          (;) at the end is a punctuation mark used in the English language to
          signify that a sentence has not reached its end yet; it will still
          continue and move on. Padayon; aims to make professional help for
          mental health easily and readily accessible to everyone everywhere.
          May those going through their silent battles find a spark of hope to
          continue and move on in victory. Padayon!
        </h1>

        <h1 className="my-5">Contact Us</h1>
        <div className="about__contact-us d-flex justify-content-evenly">
          <div className="flop1">
            <img
              src={Nene}
              alt="Nene"
              className="border rounded-circle  about__contact-us-img mb-4"
            />
            <h4>Ernest Joseph S. Curativo</h4>
            <h6>Backend & Frontend</h6>
          </div>
          <div className="flop2">
            <img
              src={Neil}
              alt= "Neil"
              className="border rounded-circle  about__contact-us-img mb-4"
            />
            <h4>Neil Christian Sagun</h4>
            <h6>Frontend & Documentation</h6>
          </div>
        </div>
      </div>
      <Footer></Footer>
    </>
  );
};

export default AboutPage;
