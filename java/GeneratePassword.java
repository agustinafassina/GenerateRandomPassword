import java.security.SecureRandom;

public class GeneratePassword {
    public static void main(String[] args) {
        int length = 16;
        String password = generateSecurePassword(length);
        System.out.println("Generated Password: " + password);
    }

    public static String generateSecurePassword(int length) {
        String charSet = "abcdefghijklmnopqrstuvwxyz"
                       + "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                       + "0123456789"
                       + "!@#$%^&*()_-+=[]{}|;:,.<>?";
        SecureRandom random = new SecureRandom();
        StringBuilder password = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int index = random.nextInt(charSet.length());
            password.append(charSet.charAt(index));
        }

        return password.toString();
    }
}