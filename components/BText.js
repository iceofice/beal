import React from "react";
import PropTypes from "prop-types";
import { Text } from "react-native";
import colors from "../assets/colors/colors";

export const BText = (props) => {
	if (props.type == "bold") {
		return (
			<Text style={{ fontFamily: "Mulish_700Bold", fontSize: props.size, color: props.color }}>
				{props.value}
			</Text>
		);
	} else if (props.type == "light") {
		return (
			<Text style={{ fontFamily: "Mulish_300Light", fontSize: props.size, color: props.color }}>
				{props.value}
			</Text>
		);
	} else if (props.type == "button") {
		return (
			<Text
				style={{
					fontFamily: "Mulish_700Bold",
					fontSize: 16,
					color: colors.text,
					textAlign: "center",
				}}
			>
				{props.value}
			</Text>
		);
	} else {
		return (
			<Text style={{ fontFamily: "Mulish_400Regular", fontSize: props.size, color: props.color }}>
				{props.value}
			</Text>
		);
	}
};

BText.propTypes = {
	size: PropTypes.number,
	color: PropTypes.string,
	value: PropTypes.string.isRequired,
};

BText.defaultProps = {
	size: 20,
	color: colors.text,
};

/*
	<BText value="aaaaaaa" weight="light" size={20} color={colors.textLight}></BText>
*/

// <Text style={{ fontFamily: "Mulish_300Light", fontSize: props.size, color: props.color, textStyle  }}>
// 				{props.value}
// 			</Text>
