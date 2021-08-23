import React from "react";
import PropTypes from "prop-types";
import { Text as BText, StyleSheet } from "react-native";
import colors from "../assets/colors/colors";

// export const Text = (props) => (
// 	<BText style={[stylePicker(props.weight), { fontSize: props.size, color: props.color }]}>
// 		{props.children}
// 	</BText>

// );

export const Text = (props) => (
	<BText style={[stylePicker(props.weight), styles(props).textStyle]}>{props.children}</BText>
);

function stylePicker(weight) {
	if (weight == "regular") return styles.regular;
	else if (weight == "bold") return styles.bold;
	return styles.light;
}

Text.propTypes = {
	weight: PropTypes.oneOf(["regular", "bold", "light"]),
	size: PropTypes.number,
	children: PropTypes.string.isRequired,
	color: PropTypes.string,
};

Text.defaultProps = {
	size: 20,
	weight: "regular",
	color: colors.text,
};

const styles = (props) =>
	StyleSheet.create({
		regular: {
			fontFamily: "Mulish_400Regular",
		},
		bold: {
			fontFamily: "Mulish_700Bold",
		},
		light: {
			fontFamily: "Mulish_300Light",
		},
		textStyle: {
			fontSize: props.size,
			color: props.color,
		},
	});
