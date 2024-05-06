import React from 'react';
import { Fade } from '@mui/material';
import { makeStyles, withTheme } from '@mui/styles';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { useSelector } from 'react-redux';

const useStyles = makeStyles((theme) => ({
    container: {
        width: 80,
        paddingLeft: 5,
        lineHeight: '25px',
        display: 'flex',
        background: `${theme.palette.secondary.dark}80`,
    },
    icon: {
        width: 24,
        display: 'block',
        fontSize: 18,
        padding: 5,
        paddingLeft: 0,
        borderRight: `1px solid ${theme.palette.border.divider}`,
    },
    number: {
        fontSize: 22.5,
        lineHeight: '22.5px',
        padding: 5,
        flex: 1,
        textAlign: 'center',
        '&.low': {
            animation: '$flash linear 1s infinite',
        },
    },
}));

export default withTheme(({ status }) => {
    const classes = useStyles();

    const isDead = useSelector((state) => state.status.isDead);

    if (
        (status.options.hideZero && status.value <= 0) ||
        (status.value >= 90 && status?.options?.hideHigh) ||
        (status.value == 0 && status?.options?.hideZero) ||
        (isDead && !status?.options?.visibleWhileDead)
    )
        return null;
    return (
        <Fade in={true}>
            <div
                className={classes.container}
                style={{ borderLeft: `4px solid ${status.color}` }}
            >
                <div className={classes.icon}>
                    <FontAwesomeIcon
                        icon={status.icon}
                        className={classes.iconTxt}
                    />
                </div>
                <div
                    className={`${classes.number} ${
                        ((!status.inverted && status.value <= 10) ||
                            (status.inverted && status.value >= 90)) &&
                        status.flash
                            ? ' low'
                            : ''
                    }`}
                >
                    {status.value}
                </div>
            </div>
        </Fade>
    );
});
