import { StyleSheet } from "react-native";

import colors from "../../assets/colors/colors";

const styles = StyleSheet.create({
	container: {
		flex: 1,
		flexDirection: "column",
		alignItems: "center",
		backgroundColor: colors.background,
		paddingVertical: "20%",
		justifyContent: "center",
	},
	icon: {
		flex: 1,
		width: 100,
		resizeMode: "contain",
	},
	iconWrapper: {
		flex: 1,
		marginBottom: 30,
	},
	imageWrapper: {
		flex: 3,
		aspectRatio: 1 / 1,
		alignItems: "center",
		justifyContent: "center",
		marginBottom: 30,
	},
	landingPageImage: {
		height: "60%",
		resizeMode: "contain",
		marginVertical: 15,
		marginHorizontal: 15,
	},
});

export default styles;
