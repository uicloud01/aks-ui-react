import React, { useEffect, useState } from "react";

const LatestTimeUpdate = () => {

    const [timer, setTimer] = React.useState(new Date().toLocaleTimeString());

    const waitAndshow = () => {
        let systemdate = new Date();
        setTimer(systemdate.toLocaleTimeString())
    }

    setInterval(waitAndshow, 1000);

    return (
        <div>{timer}</div>
    )
}

export default LatestTimeUpdate;