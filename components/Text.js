import React from "react";
import PropTypes from "prop-types";
import { Text as BText, StyleSheet } from "react-native";

import colors from "../assets/colors/colors";

export const Text = (props) => (
	<BText style={[stylePicker(props.weight), styles.textStyle(props)]}>{props.children}</BText>
);

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

function stylePicker(weight) {
	if (weight == "regular") return styles.regular;
	else if (weight == "bold") return styles.bold;
	return styles.light;
}

const styles = StyleSheet.create({
	regular: {
		fontFamily: "Mulish_400Regular",
	},
	bold: {
		fontFamily: "Mulish_700Bold",
	},
	light: {
		fontFamily: "Mulish_300Light",
	},
	textStyle: (props) => ({
		fontSize: props.size,
		color: props.color,
	}),
});

// Alternative way to set the style

// function fontPicker(weight) {
//     if (weight == "regular") return "Mulish_400Regular";
//     else if (weight == "bold") return "Mulish_700Bold";
//     return "Mulish_300Light";
// }

// const styles = (props) =>
//     StyleSheet.create({
//         textStyle: {
//             fontSize: props.size,
//             color: props.color,
//             fontFamily: fontPicker(props.weight),
//         },
//     });
