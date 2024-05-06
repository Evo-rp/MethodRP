import React from 'react';

export class ErrorBoundary extends React.Component {
	constructor(props) {
		super(props);
		this.props = props;
		this.state = { hasError: false };
	}

	static getDerivedStateFromError(error) {
		return { hasError: true };
	}

	componentDidCatch(error, errorInfo) {
		console.log('Phone Caught Error', error, errorInfo);
	}

	componentDidUpdate(previousProps, previousState) {
		if (previousProps.children !== this.props.children)
			this.setState({ hasError: false });
	}

	render() {
		if (this.state.hasError) {
			return (
				<div
					style={{
						display: 'flex',
						height: '100%',
						overflow: 'hidden',
					}}
				>
					<div
						style={{
							textAlign: 'center',
							fontSize: 22,
							fontWeight: 'bold',
							width: '100%',
						}}
					>
						<h1>App Crashed 😟</h1>
						<h3>Try closing the app and opening it again.</h3>
					</div>
				</div>
			);
		}

		return this.props.children;
	}
}
