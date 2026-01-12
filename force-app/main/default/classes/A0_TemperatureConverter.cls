/**
 * @description A utility class for temperature conversions.
 */
public class A0_TemperatureConverter {

    /**
     * @description Converts a temperature from Fahrenheit to Celsius.
     * @param fh The temperature in Fahrenheit.
     * @return The temperature in Celsius, rounded to 2 decimal places.
     */
    public static Decimal FahrenheitToCelsius(Decimal fh) {
        // The formula for converting Fahrenheit to Celsius is (F - 32) * 5/9
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2); // Rounds the result to two decimal places
    }
}