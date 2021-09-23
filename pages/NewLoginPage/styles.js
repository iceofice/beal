import { StyleSheet } from "react-native";
import colors from "../../assets/colors/colors";

const styles = StyleSheet.create({
	container: {
		alignItems: "center",
		justifyContent: "center",
	},
	icon: {
		width: 100,
		height: 100,
		marginBottom: 54,
	},
	header: {
		marginBottom: 29,
	},
	inputField: {
		margin: 14,
	},
	rememberMe: {
		flexDirection: "row",
	},
	checkbox: {
		color: colors.text,
	},
	extra: {
		width: "100%",
		flexDirection: "row",
		justifyContent: "space-evenly",
		marginBottom: 29,
	},
	loginWith: {
		backgroundColor: colors.background,
		// marginBottom: 10,
		paddingBottom: 56,
		flexDirection: "column",
		alignItems: "center",
		justifyContent: "space-evenly",
	},
	iconLogin: {
		marginTop: 11,
		width: 38,
		height: 38,
	},
});

export default styles;
