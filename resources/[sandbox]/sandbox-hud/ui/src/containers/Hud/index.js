import React from 'react';
import { useSelector } from 'react-redux';

import Default from './layouts/Default';
import Minimap from './layouts/Minimap';
import Center from './layouts/Center';

export default () => {
    const config = useSelector((state) => state.hud.config);
    switch (config.layout) {
        case 'minimap':
            return <Minimap />;
        case 'center':
            return <Center />;
        default:
            return <Default />;
    }
};
