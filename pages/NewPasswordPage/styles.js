import { StyleSheet } from "react-native";

import colors from "../../assets/colors/colors";

const styles = StyleSheet.create({
	flexOne: {
		flex: 1,
	},
	container: {
		flex: 1,
		flexDirection: "column",
		alignItems: "center",
		backgroundColor: colors.background,
	},
	iconWrapper: {
		width: 100,
		aspectRatio: 1,
		alignItems: "center",
		marginBottom: 54,
	},
	icon: {
		flex: 1,
		resizeMode: "contain",
	},
	formWrapper: {
		alignItems: "center",
	},
	title: {
		marginBottom: 40,
	},
	inputText: {
		marginBottom: 24,
	},
	button: {
		marginTop: 8,
	},
});

export default styles;
