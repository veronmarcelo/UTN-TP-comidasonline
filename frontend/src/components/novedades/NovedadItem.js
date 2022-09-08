import React from 'react';

const NovedadItem = (props) => {
    const {menu, ingredientes, imagen, detalles} = props;

    return (
        <div className="novedades">
            <h1>{menu}</h1>
            <h2>{ingredientes}</h2>
            <img src={imagen} />
            <div dangerouslySetInnerHTML={{__html: detalles}} />
            <hr />
        </div>
    );
}


export default NovedadItem;