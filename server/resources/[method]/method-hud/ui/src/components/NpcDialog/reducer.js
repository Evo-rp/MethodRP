export const initialState = {
    showing: false,
    firstName: 'Blazer',
    lastName: 'Boccle',
    tag: 'Gruppe 6',
    description: 'Do you want to start the job.',
    buttons: [
        {
            label: 'Yes'
        },
        {
            label: 'No'
        }
    ]
};

export default (state = initialState, action) => {
    switch (action.type) {
        case 'NPCState':
            return {
                ...state,
                ...action.payload,
            };
        case 'NPCClose':
            return {
                ...state,
                showing: false
            }
        default:
            return state;
    }
};
