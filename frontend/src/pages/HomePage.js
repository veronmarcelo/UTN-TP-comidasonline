import '../styles/pages/HomePage.css';

const HomePage = (props) => {
    return (
        <main className="holder">
            <div className="columnas">
            <section className="bienvenidos">
                <h2>Bienvenidos</h2>
                <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur quam at iste? Repellat qui deleniti suscipit, maxime minus sed quibusdam ullam praesentium inventore vitae iste beatae quis facere ad totam?</p>

            </section>
            <section className="testimonios">
                <h2>Testimonios</h2>
                <div className="testimonio">
                    <span className="cita">La mejor comida, volveré con mas dinero...</span>
                    <span className="autor">Eduardo Martinuzi - Turista contemporaneo</span>
                </div>
            </section>
        </div>

    </main>
    )
}

export default HomePage;