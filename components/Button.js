import React from "react";
import PropTypes from "prop-types";
import { Dimensions, TouchableOpacity, StyleSheet } from "react-native";

import colors from "../assets/colors/colors";
import { Text } from "./Text";

export const Button = (props) => (
	<TouchableOpacity onPress={props.onPress} style={[styles.button, buttonStyle(props.type)]}>
		<Text size={16} weight="bold">
			{props.title}
		</Text>
	</TouchableOpacity>
);

Button.propTypes = {
	title: PropTypes.string.isRequired,
	type: PropTypes.oneOf(["primary", "secondary"]),
	onPress: PropTypes.func,
};

Button.defaultProps = {
	type: "primary",
};

function buttonStyle(type) {
	if (type == "primary") return styles.primaryButton;
	return styles.secondaryButton;
}

const width = Dimensions.get("window").width;

const styles = StyleSheet.create({
	button: {
		borderRadius: 31.5,
		width: width / 2.5,
		aspectRatio: 4 / 1,
		justifyContent: "center",
		alignItems: "center",
	},
	primaryButton: {
		backgroundColor: colors.primary,
		marginBottom: 15,
	},
	secondaryButton: {
		borderColor: colors.primary,
		borderWidth: 2,
	},
});
