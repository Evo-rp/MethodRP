export const initialState = {
    settings: {
        isOpen: true
    } 
};

export default (state = initialState, action) => {
    switch(action.type) {
        case 'TOGGLE_SETTINGS':
            return {
                ...state,
                settings: {
                    ...state.settings,
                    isOpen: action.payload.state, 
                }
            };
        case 'SET_CONFIG':
            return {
                ...state,
                ...action.payload.config, 
            };
        default:
            return state;
    }
}
