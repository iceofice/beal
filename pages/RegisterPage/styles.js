import { StyleSheet } from "react-native";

import colors from "../../assets/colors/colors";

const styles = StyleSheet.create({
	flexOne: {
		flex: 1,
	},
	container: {
		flex: 1,
		backgroundColor: colors.background,
		alignItems: "center",
		justifyContent: "space-between",
	},
	iconWrapper: {
		aspectRatio: 1,
		width: 100,
		alignItems: "center",
		marginBottom: 54,
	},
	icon: {
		flex: 1,
		resizeMode: "contain",
	},
	title: {
		marginBottom: 40,
	},
	formWrapper: {
		flex: 3,
		alignItems: "center",
		justifyContent: "space-evenly",
	},
	inputFormWrapper: {
		alignItems: "center",
	},
	inputText: {
		marginBottom: 12,
	},
	buttonWrapper: {
		alignItems: "center",
	},
	button: {
		marginTop: 8,
	},
	loginTextWrapper: {
		flexDirection: "row",
		marginBottom: 56,
	},
	loginText: {
		marginHorizontal: 4,
	},
	bottomWrapper: {
		alignItems: "center",
		justifyContent: "flex-end",
	},
	separator: {
		marginHorizontal: 100,
		flexDirection: "row",
		alignItems: "center",
	},
	separatorLine: {
		flex: 1,
		height: 1,
		backgroundColor: colors.textLight,
	},
	separatorText: {
		paddingHorizontal: 8,
	},
	authWrapper: {
		flexDirection: "row",
		paddingBottom: "20%",
		marginTop: 12,
	},
	socialMedia: {
		width: 40,
		aspectRatio: 1,
		resizeMode: "contain",
		marginHorizontal: 4,
	},
});

export default styles;
