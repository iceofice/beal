import { StyleSheet, Dimensions } from "react-native";
import colors from "../../assets/colors/colors";

const windowWidth = Dimensions.get("window").width;

const styles = StyleSheet.create({
	container: {
		flex: 1,
		alignItems: "center",
		backgroundColor: colors.background,
		paddingVertical: "20%",
	},
	icon: {
		flex: 1,
		width: "100%",
		resizeMode: "contain",
		marginBottom: 30,
		backgroundColor: "#000",
	},
	imageWrapper: {
		flex: 3,
		width: "75%",
		aspectRatio: 1 / 1,
		alignItems: "center",
		justifyContent: "center",
		backgroundColor: "#000",
		marginBottom: 30,
	},
	buttonWrapper: {
		flex: 1,
		justifyContent: "flex-end",
		backgroundColor: "#000",
	},

	slogan: {
		color: colors.textLight,
		fontFamily: "Mulish_Light",
		fontSize: 24,
	},
	landingPageImage: {
		height: "75%",
		aspectRatio: 5 / 4,
		resizeMode: "center",
		marginVertical: 15,
	},
	description: {
		color: colors.textLight,
		fontFamily: "Mulish_Light",
		fontSize: 18,
	},
	primaryButton: {
		borderRadius: 31.5,
		backgroundColor: colors.primary,
		width: windowWidth / 2.5,
		aspectRatio: 4 / 1,
		justifyContent: "center",
		marginBottom: 15,
	},
	secondaryButton: {
		borderRadius: 31.5,
		borderWidth: 2,
		borderColor: colors.primary,
		width: windowWidth / 2.5,
		aspectRatio: 4 / 1,
		justifyContent: "center",
	},
	buttonText: {
		textAlign: "center",
		fontFamily: "Mulish_Bold",
		fontSize: 16,
		color: colors.text,
	},
});

export default styles;
