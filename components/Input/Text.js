import React, { useRef, useState } from "react";
import { Animated, View, TextInput, StyleSheet, TouchableWithoutFeedback } from "react-native";
import { FontAwesome } from "@expo/vector-icons";

// import { Text } from "../Text";
import colors from "../../assets/colors/colors";

export const InputText = () => {
	const translation = useRef(new Animated.Value(0)).current;
	const fontSize1 = useRef(new Animated.Value(0)).current;
	const inputText = useRef();
	const [color, setColor] = useState(colors.textLight);
	const [size, setSize] = useState(12);

	function float() {
		Animated.timing(translation, {
			toValue: -15,
			useNativeDriver: true,
		}).start();
		Animated.timing(fontSize1, {
			toValue: -15,
			useNativeDriver: true,
		}).start();
		setColor(colors.secondary);
		setSize(10);
	}
	function unfloat() {
		Animated.timing(translation, {
			toValue: 0,
			useNativeDriver: true,
		}).start();
		Animated.timing(fontSize1, {
			toValue: 0,
			useNativeDriver: true,
		}).start();
		setColor(colors.textLight);
		setSize(12);
	}
	const styles = StyleSheet.create({
		input: {
			color: colors.text,
			fontSize: 12,
			minWidth: "70%",
		},
		wrapper: {
			flexDirection: "row",
			alignItems: "center",
			borderBottomWidth: 1,
			borderBottomColor: color,
		},
		label: {
			position: "absolute",
			top: "20%",
			transform: [{ translateY: translation }],
		},
		labelText: {
			fontSize: size,
			color: colors.textLight,
		},
		inputWrapper: { marginLeft: 6 },
	});
	return (
		<View style={styles.wrapper}>
			<FontAwesome name="user" size={12} color={color} />
			<View style={styles.inputWrapper}>
				<TextInput style={styles.input} ref={inputText} onFocus={float} onBlur={unfloat} />
				<Animated.View style={styles.label}>
					<TouchableWithoutFeedback onPress={() => inputText.current.focus()}>
						<Animated.Text style={styles.labelText}>Username</Animated.Text>
					</TouchableWithoutFeedback>
				</Animated.View>
			</View>
		</View>
	);
};

// Text.propTypes = {
// 	weight: PropTypes.oneOf(["regular", "bold", "light"]),
// 	size: PropTypes.number,
// 	children: PropTypes.string.isRequired,
// 	color: PropTypes.string,
// };

// Text.defaultProps = {
// 	size: 20,
// 	weight: "regular",
// 	color: colors.text,
// };

// function stylePicker(weight) {
// 	if (weight == "regular") return styles.regular;
// 	else if (weight == "bold") return styles.bold;
// 	return styles.light;
// }
