import React from 'react';
import '../../styles/components/layout/Header.css';

const Header = (props) => {
  return (
    <header>
      <div className="holder">
        <img src="images/morfifacil.png" width="100" alt="MorfiFacil" />
        <h1>Morfi-Facil</h1>
      </div>
    </header>
  );
}

export default Header;
