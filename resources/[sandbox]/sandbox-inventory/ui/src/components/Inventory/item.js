const lua2json = (lua) =>
	JSON.parse(
		lua
			.replace(/\[([^\[\]]+)\]\s*=/g, (s, k) => `${k} :`)
			.replace(/,(\s*)\}/gm, (s, k) => `${k}}`),
	);

const getItemImage = (item, itemData) => {
	const metadata = Boolean(item?.MetaData)
		? typeof item?.MetaData == 'string'
			? lua2json(item.MetaData)
			: item.MetaData
		: Object();

	const smd = Boolean(itemData?.staticMetadata)
		? typeof itemData?.staticMetadata == 'string'
			? lua2json(itemData?.staticMetadata)
			: itemData?.staticMetadata
		: Object();

	if (metadata?.CustomItemImage) {
		return metadata?.CustomItemImage;
	} else if (smd?.CustomItemImage) {
		return smd?.CustomItemImage;
	} else if (Boolean(itemData) && Boolean(itemData.iconOverride)) {
		return `../images/items/${itemData.iconOverride}.webp`;
	} else {
		return `../images/items/${itemData.name}.webp`;
	}
};

const getItemLabel = (item, itemData) => {
	const metadata = Boolean(item?.MetaData)
		? typeof item?.MetaData == 'string'
			? lua2json(item.MetaData)
			: item.MetaData
		: Object();

	if (metadata?.CustomItemLabel) {
		return metadata?.CustomItemLabel;
	} else {
		return itemData?.label ?? 'Unknown';
	}
};

const fallbackItem = {
	name: 'ph',
	label: 'Invalid Item',
	description:
		"An item in your inventory is missing its item definition, try /reloaditems and if this doesn't fix it please report this",
	invalid: true,
	price: 0,
	isStackable: false,
	type: -1,
	rarity: -1,
	weight: 0,
};

export { getItemImage, getItemLabel, fallbackItem };
