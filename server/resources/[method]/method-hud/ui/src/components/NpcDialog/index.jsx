import React from 'react';
import { useSelector } from 'react-redux';
import { Button, Zoom } from '@mui/material';
import { makeStyles } from '@mui/styles';

import Nui from '../../util/Nui';

const useStyles = makeStyles((theme) => ({
    container: {
        position: 'absolute',
        width: '100%',
        height: '100%',
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'flex-end',
        alignItems: 'center',
        paddingBottom: '3.7vh',
        background: 'radial-gradient(46.61% 82.87% at 50% 23.98%, rgba(38,42,60,0) 0%, rgba(34,37,48,.88) 100%)',
        top: 0
    },
    wrapper: {
        width: '60vh',
        height: 'auto',
        flexShrink: 0,
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'flex-start',
        alignIitems: 'center',
        borderRadius: '1.5vh',
        background: 'url(./background.svg), radial-gradient(61.83% 85.77% at 92.1% 22.12%,#6d0c1f 0%,#222530 100%)',
        backgroundPosition: 'center',
        backgroundRepeat: 'no-repeat',
        backgroundSize: 'cover',
        overflow: 'hidden',
        padding: '2vh 2.8vh 2.5vh',
        gap: '1vh',
        transform: 'translateY(30vh)',
    },
    header: {
        width: '100%',
        height: '3.35vh',
        display: 'flex',
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center'
    },
    tag: {
        padding: '.6vh 1vh',
        display: 'flex',
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        color: '#fff',
        textAlign: 'center',
        fontFamily: 'LCD',
        fontSize: '1.11vh',
        fontStyle: 'normal',
        fontWeight: 400,
        lineHeight: '108.5%',
        borderRadius: '.185vh',
        background: '#790018'
    },
    textBox: {
        padding: '.7vh 1.3vh 1vh',
        color: '#fff',
        fontFamily: 'Oswald',
        fontSize: '1.296vh',
        fontStyle: 'normal',
        fontWeight: 400,
        lineHeight: '144.5%',
        width: '100%',
        height: 'auto',
        borderRadius: '.185vh',
        background: 'radial-gradient(111.65% 77.01% at 49.73% 50.27%, rgba(255,255,255,.19) 0%, rgba(255,255,255,0) 100%)'
    },
    indicator: {
        position: 'absolute',
        marginLeft: '-1vh',
        marginTop: '-.2vh'
    },
    options: {
        width: '100%',
        height: 'auto',
        display: 'grid',
        gridTemplateColumns: 'repeat(2, 1.5fr)',
        gridAutoRows: 'auto',
        gridGap: '1vh',
        justifyItems: 'center'
    },
    option: {
        width: '26.75vh',
        height: '3.05vh',
        flexShrink: 0,
        cursor: 'pointer',
        gap: '1vh',
        display: 'flex',
        flexDirection: 'row',
        justifyContent: 'flex-start',
        alignItems: 'center',
        padding: '.3vh',
        borderRadius: '.185vh',
        background: 'radial-gradient(118.51% 118.51% at 50% 0%,rgba(255,255,255,.15) 0%,rgba(255,255,255,0) 100%)',
        color: '#fff',
        fontFamily: 'Oswald',
        fontSize: '1.296vh',
        fontStyle: 'normal',
        fontWeight: 400,
        lineHeight: '144.5%',
    },
    index: {
        width: '2.31vh',
        height: '2.31vh',
        flexShrink: 0,
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        color: '#fff',
        background: '#790018'
    },
    text: {
        color: '#fff',
        fontFamily: 'Oswald',
        fontSize: '2.96vh',
        fontStyle: 'normal',
        fontWeight: 300,
        lineHeight: 'normal',
        letterSpacing: '.0296vh'
    },
    big: {
        fontWeight: 700
    }
}));

export default () => {
    const classes = useStyles();

    const Showing = useSelector((state) => state.NpcDialog.showing);
    const FirstName = useSelector((state) => state.NpcDialog.firstName);
    const LastName = useSelector((state) => state.NpcDialog.lastName);
    const Tag = useSelector((state) => state.NpcDialog.tag);
    const Description = useSelector((state) => state.NpcDialog.description)
    const Buttons = useSelector((state) => state.NpcDialog.buttons)

    return (
        <div className={classes.container} style={{ display: Showing ? '' : 'none' }}>
            <Zoom in={Showing} timeout={500}>
                <div className={classes.wrapper}>
                    <div className={classes.header}>
                        <span className={classes.text}>
                            <span className={classes.big}>
                                {FirstName}
                            </span>
                            {' '}
                            {LastName}
                        </span>
                        <div className={classes.tag}>
                            {Tag}
                        </div>
                    </div>

                    <div className={classes.textBox}>
                        <svg className={classes.indicator} width="0.83vh" height="0.83vh" viewBox="0 0 9 9" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0H9L4.5 4.5L0 9V0Z" ></path>
                            <defs>
                                <radialGradient id="paint0_radial_3202_976" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="translate(4.5 4.5) rotate(45) scale(8.48528)">
                                    <stop stop-color="#7702e5"></stop>
                                    <stop offset="1" stop-color="#7702e5" stop-opacity="0"></stop>
                                </radialGradient>
                            </defs>
                        </svg>
                        <span>{Description}</span>
                    </div>

                    <div className={classes.options}>
                        {Buttons.map((data, index) => {
                            return (
                                <Button className={classes.option} variant='contained' color='secondary' onClick={() => Nui.send('NPCResponse', data.data)}>
                                    <div className={classes.index}>
                                        {index + 1}
                                    </div>
                                    {data.label}
                                </Button>
                            )
                        })}
                    </div>
                </div>
            </Zoom>
        </div>
    );
};