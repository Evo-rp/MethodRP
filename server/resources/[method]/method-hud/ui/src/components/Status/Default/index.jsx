import React from 'react';
import { useSelector } from 'react-redux';
import { useTheme, Grid } from '@mui/material';
import { makeStyles, withTheme } from '@mui/styles';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { CSSTransition, TransitionGroup } from 'react-transition-group';

import NumberStatus from '../components/Number';
import BarStatus from '../components/Bar';
import VOIP from '../components/VOIP';

const useStyles = makeStyles((theme) => ({
    status: {
        fontSize: 30,
        width: 'fit-content',
        textAlign: 'center',
        marginBottom: 4,
        width: 224,
    },
    iconWrapper: {
        position: 'relative',
        height: 50,
        width: 50,
        '&:not(:last-of-type)': {
            marginRight: 20,
        },
        '&.low': {
            animation: '$flash linear 1s infinite',
        },
    },
    iconProg: {
        position: 'absolute',
        height: 5,
        left: 0,
        right: 0,
        bottom: 0,
        margin: 'auto',
        zIndex: 5,
    },
    barBg: {
        position: 'absolute',
        height: 7,
        left: 0,
        right: 0,
        bottom: 0,
        margin: 'auto',
        zIndex: 5,
        boxShadow: '0 0 5px #000',
        background: theme.palette.secondary.dark,
        border: `1px solid ${theme.palette.border.divider}`,
    },
    bars: {
        display: 'flex',
        gap: 4,
        flexFlow: 'wrap-reverse',
        width: 248,
        marginBottom: 4,
    },
    bar: {
        maxWidth: '100%',
        height: '100%',
        transition: 'width ease-in 0.15s',
    },
    iconAvatar: {
        position: 'absolute',
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        margin: 'auto',
        // backgroundImage: `linear-gradient(to top, ${theme.palette.secondary.dark}7a, transparent)`,
        '& svg, & span': {
            position: 'absolute',
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            margin: 'auto',
            fontSize: 22,
            textShadow: '0 0 5px #000',
            color: theme.palette.text.main,
        },
    },
}));

export default withTheme(() => {
    const classes = useStyles();
    const theme = useTheme();

    const statuses = useSelector((state) => state.status.statuses);
    const config = useSelector((state) => state.hud.config);
    const isDead = useSelector((state) => state.status.isDead);
    const health = useSelector((state) => state.status.health);
    const armor = useSelector((state) => state.status.armor);

    const els = [
        {
            icon: 'shield',
            color: isDead ? '#fff' : theme.palette.info.main,
            value: armor,
            options: {
                hideZero: true,
                order: 1,
            },
        },
        {
            icon: isDead ? 'skull' : 'heart',
            color: isDead ? '#fff' : theme.palette.success.main,
            value: isDead ? 100 : health,
            options: {
                hideZero: false,
                visibleWhileDead: true,
                order: 2,
            },
        },
        ...statuses,
    ];

    const getStatusElem = (s) => {
        switch (config.statusType) {
            case 'numbers':
                return <NumberStatus status={s} />;
            default:
                return <BarStatus status={s} />;
        }
    };

    return (
        <>
            <TransitionGroup className={classes.status}>
                <>
                    <div className={classes.bars}>
                        {els
                            .sort(
                                (a, b) => a?.options?.order - b?.options?.order,
                            )
                            .map((s, i) => {
                                return (
                                    <CSSTransition
                                        key={`status-${i}`}
                                        timeout={500}
                                        classNames="fade"
                                    >
                                        {getStatusElem(s)}
                                    </CSSTransition>
                                );
                            })}
                    </div>
                    <VOIP />
                </>
            </TransitionGroup>
        </>
    );
});
