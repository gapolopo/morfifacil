import React from 'react';
import '../styles/components/pages/homePage.css';

const HomePage = (props) => {
  return (
    <main className="holder">
      <div className="homeimg">
        <img src="images/home.png" alt="Morfi-Facil"/>
      </div>
      <div className="columnas">
        <div className="bienvenidos">
          <h2>Bienvenidos</h2>
          Esta aplicación dará solución a la problemática diaria de las comidas (desayuno, almuerzo, merienda, cena y entre comidas), intentando poner un orden nutricional a esta problemática.

          Es real el dilema de toda familia, no saber que comer y, si para cierta preparación, tenemos los ingredientes en la alacena.

          Esta solución contará con un calendario de comidas, una biblioteca de recetas y una lista de almacén que propondrá, basado en las recetas disponibles y el consumo de ingredientes, que productos hay que reponer.

          Lo invitamos a utilizar esta solución para brindarle a su familia una dieta más equilibrada a la vez que soluciona problemas típicos y frecuentes, y ayuda a la contabilidad familiar.

          Saludos
        </div>
        <div className="testimonios">
          <h2>Testimonios</h2>
          <div className="testimonio">
            <span class="cita"> Simplemente Excelente</span>
            <span className="autor"> Juan Perez - zapatos.com </span>
          </div>
        </div>
      </div>
    </main>
  );
}

export default HomePage;
