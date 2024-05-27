export const initialState = {
	hidden: process.env.NODE_ENV == 'production',
	power: process.env.NODE_ENV != 'production',
	volume: 100,
	frequency: 0,
	frequencyName: '',
	typeName: 'Radio',
};

const appReducer = (state = initialState, action) => {
	switch (action.type) {
		case 'APP_SHOW':
			return {
				...state,
				hidden: false,
			};
		case 'APP_HIDE':
			return {
				...state,
				hidden: true,
			};
		case 'UPDATE_DATA':
			return {
				...state,
				frequency: action.payload.frequency ?? state.frequency,
				frequencyName:
					action.payload.frequencyName ?? state.frequencyName,
				power: action.payload.power ?? state.power,
				volume: action.payload.volume ?? state.volume,
				typeName: action.payload.typeName ?? state.typeName,
			};
		default:
			return state;
	}
};

export default appReducer;
