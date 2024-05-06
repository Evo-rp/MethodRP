import React, { useEffect, useState, useMemo } from "react";
import { useDispatch, useSelector } from "react-redux";
import { makeStyles } from "@material-ui/styles";
import { throttle } from 'lodash';
import { List, ListItem ,ListItemAvatar, IconButton, Grid, Divider, Avatar,  ListItemText , Badge, Accordion, AccordionSummary, AccordionDetails, Typography  } from "@material-ui/core";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

import Nui from "../../util/Nui";
import { useAlert, useMyStates } from '../../hooks';

const useStyles = makeStyles((theme) => ({
    wrapper: {
		height: '100%',
		background: theme.palette.secondary.main,
	},
	content: {
		height: '93.5%',
		padding: '0 0px 0 10px',
		overflowY: 'auto',
		overflowX: 'hidden',
		'&::-webkit-scrollbar': {
			width: 6,
		},
		'&::-webkit-scrollbar-thumb': {
			background: '#ffffff52',
		},
		'&::-webkit-scrollbar-thumb:hover': {
			background: theme.palette.primary.main,
		},
		'&::-webkit-scrollbar-track': {
			background: 'transparent',
		},
	},
	summary: {
		//backgroundColor: 'red',
	}
}));

export default (props) => {
    const classes = useStyles();
	const dispatch = useDispatch();
	const services = useSelector((state) => state.data.data.services);
	const [loading, setLoading] = useState(false);
	const showAlert = useAlert();

	const SetGPS = async (location, jobName) => {
		try {
			let res = await (
				await Nui.send('Services:SetGPS', {
					location: location,
					jobName: jobName
				})
			).json();
			if (res) {
				showAlert('GPS route set!');
			} else {
				showAlert('Unable to set GPS!');
			}
		} catch (err) {
			showAlert('Unable to set GPS!');
		}
	};

	const fetch = useMemo(
		() =>
			throttle(async () => {
				if (loading) return;
				setLoading(true);
				try {
					let res = await (await Nui.send('Services:GetServices')).json();
					if (res) {
						dispatch({
							type: 'SET_DATA',
							payload: {
								type: 'services',
								data: res,
							},
						});				
					} else {
						dispatch({
							type: 'SET_DATA',
							payload: {
								type: 'services',
								data: Array(),
							},
						});
					}
				} catch (err) {
					console.log(err);
					dispatch({
						type: 'SET_DATA',
						payload: {
							type: 'services',
							data: Array(),
						},
					});
				}
				setLoading(false);
			}, 1000),
		[],
	);

	useEffect(() => {
		fetch();
	}, []);

    return (
        <div className={classes.wrapper}>
            <div className={classes.content}>
				<List>
					{services.length > 0 && services.map(function(data, index) { 
						return <List component="nav">
							<ListItem divider style={{backgroundColor: data.jobColor ? data.jobColor : '#f00' }}>
								<ListItemText>
									<Grid container justifyContent="space-around" alignItems="center">
										<Grid xs={8}>
											<Typography style={{color: data.jobTextColor ? data.jobTextColor : '#fff' }}>{data.jobIcon ? <FontAwesomeIcon icon={['fas', data.jobIcon]} /> : <FontAwesomeIcon icon={['fas', 'building']} />} {data.jobLabel}</Typography>
										</Grid>
										<Grid xs={4} style={{textAlign: 'right', paddingRight: "10px"}}>
											<span style={{width: "15px", height: "15px", borderRadius: "50%", backgroundColor: data.players.length > 1 ? 'green' : 'orange', display: "inline-block", marginRight: "10px", verticalAlign: "middle"}}></span>
											<IconButton aria-label="map" onClick={() => SetGPS(data.jobLocation, data.jobName)}>
												<FontAwesomeIcon icon={['fas', 'location-crosshairs']} />
											</IconButton>
										</Grid>
									</Grid>
								</ListItemText>
							</ListItem>
						</List>
					})}
					{services.length == 0 && 
						<List sx={{width: '100%' }} >
							<ListItem >
								<ListItemText>No services are available at this time</ListItemText>
							</ListItem>
						</List>
					}
				</List>
            </div>
        </div>
    );
};
