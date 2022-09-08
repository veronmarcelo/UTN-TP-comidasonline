import { useState, useEffect} from 'react';
import axios from 'axios';
import NovedadItem from '../components/novedades/NovedadItem';

import '../styles/pages/NovedadesPage.css';

const NovedadesPage = (props) => {
    const [loading, setLoading] = useState(false);
    const [novedades, setNovedades] = useState([]);

    useEffect(() => {
        const cargarNovedades = async () => {
            setLoading(true);
            const response = await axios.get ('http://localhost:3000/api/novedades');
            setNovedades(response.data);
            setLoading(false);
        };

        cargarNovedades();
    }, []);

return (
    <section className="holder">
    <h2>Nuestras propuestas</h2>
    { 
    loading ? (
        <p>Cargando...</p>
    ) : (
        novedades.map(item => <NovedadItem key={item.id}
            menu={item.menu} ingredientes={item.ingredientes}
            imagen={item.imagen} detalles={item.detalles} />)
    )
    }
    </section>
)
};


  export default NovedadesPage;

