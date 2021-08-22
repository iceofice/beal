import { StyleSheet } from "react-native";

import colors from "../../assets/colors/colors";

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
	},
	imageWrapper: {
		flex: 3,
		width: "75%",
		aspectRatio: 1 / 1,
		alignItems: "center",
		justifyContent: "center",
		marginBottom: 30,
	},

	slogan: {
		color: colors.textLight,
		fontFamily: "Mulish_300Light",
		fontSize: 24,
	},
	landingPageImage: {
		height: "60%",
		resizeMode: "contain",
		marginVertical: 15,
		marginHorizontal: 15,
	},
	description: {
		color: colors.textLight,
		fontFamily: "Mulish_300Light",
		fontSize: 18,
	},
});

export default styles;
