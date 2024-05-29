import {makeStyles} from "@mui/styles";
import {Tooltip} from "@mui/material";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import React, {useEffect, useState} from 'react';
import Nui from "../../../util/Nui";
import {SelectSpawn} from "../../../util/NuiEvents";
import {useDispatch, useSelector} from "react-redux";


const useStyles = makeStyles((theme) => ({
  spawnList: {
    position: 'absolute',
    width: 338,
    height: 709,
    top: '50%',
    right: '2%',
    transform: 'translateY(-50%)'
  },
  header: {
    color: theme.palette.text.main,
    position: 'relative',
    top: -35,
    left: -15,
    letterSpacing: 1,
    textTransform: 'uppercase',
    whiteSpace: 'nowrap'
  },
  newPoint: {
    width: '1%',
    height: '1vh',
    display: 'flex',
    position: 'absolute',
    minWidth: 0,
    textAlign: 'center',
    transition: 'transform .2s ease-in-out',
    '&:hover': {
      transform: 'scale(1.1)',
      cursor: 'pointer'
    }
  },

  spawnBox: {
    padding: "0",
    overflow: "hidden",
    color: "rgba(162, 162, 162, 0.85)",
    marginLeft: "10.4%",
    marginTop: "1%",
    width: "80%",
    height: "95vh",
    display: "flex",
    minWidth: "0",
    textAlign: "center",
    fontSize: "25px",
  },
  spawnPoint: {
    width:" 1%",
    height: "1vh",
    display: "flex",
    position: "absolute",
    minWwidth: "0",
    textAlign: "center",
    fontSize: "25px",
    color: "red"
  },
  spawnIcon: {
    position: "absolute",
    top: "-2.2vh",
    left: "-0.7vh",
    fontSize: "2.5vh",
  }
}));


export default ({ convertedSpawn })  => {
  const classes = useStyles();
  const dispatch = useDispatch();
  const selected = useSelector((state) => state.spawn.selected);

  const onClick = (currentSpawn) => {
    Nui.send(SelectSpawn, { currentSpawn });
    dispatch({
      type: 'SELECT_SPAWN',
      payload: currentSpawn,
    });
  };

  return (
    <div className={classes.spawnBox} id={'spawnBox'}>
        {convertedSpawn?.map((spawn, i) => {
          return (
            <Tooltip
              title={spawn.label}
              placement={'top'}
              arrow
            >
              <div key={spawn.label} className={classes.newPoint} style={{marginTop: spawn.posX, marginLeft: spawn.posY}}>
                <div className={classes.spawnIcon} onClick={() => onClick(spawn)}>
                  <FontAwesomeIcon
                    icon={'fa-solid fa-location-dot'}
                    color={selected?.id == spawn?.id ? 'red' : 'black'}
                    onClick={() => {}}
                    onMouseEnter={() => {}}
                    onMouseLeave={() => {}}
                  />
                </div>
              </div>
            </Tooltip>
          )
        })}
    </div>
  )

}
