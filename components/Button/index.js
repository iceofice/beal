import React from "react";
import PropTypes from "prop-types";
import { Dimensions, Text, TouchableOpacity, StyleSheet } from "react-native";

import colors from "../../assets/colors/colors";

function Button({ text, type, onPress }) {
	return (
		<TouchableOpacity onPress={onPress} style={[styles.button, buttonStyle(type)]}>
			<Text style={styles.buttonText}>{text}</Text>
		</TouchableOpacity>
	);
}

function buttonStyle(type) {
	if (type == "primary") return styles.primaryButton;
	return styles.secondaryButton;
}

Button.propTypes = {
	text: PropTypes.string.isRequired,
	type: PropTypes.oneOf(["primary", "secondary"]),
	onPress: PropTypes.func,
};

Button.defaultProps = {
	type: "primary",
};

const width = Dimensions.get("window").width;

const styles = StyleSheet.create({
	button: {
		borderRadius: 31.5,
		justifyContent: "center",
		width: width / 2.5,
		aspectRatio: 4 / 1,
	},
	primaryButton: {
		backgroundColor: colors.primary,
		marginBottom: 15,
	},
	secondaryButton: {
		borderColor: colors.primary,
		borderWidth: 2,
	},
	buttonText: {
		textAlign: "center",
		fontFamily: "Mulish_700Bold",
		fontSize: 16,
		color: colors.text,
	},
});

export default Button;
