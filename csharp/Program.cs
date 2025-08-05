using System;
using System.Security.Cryptography;
using System.Text;

class PasswordGenerator
{
    static void Main()
    {
        int length = 16;
        string password = GenerateSecurePassword(length);
        Console.WriteLine($"Generated Password with net9: {password}");
    }

    static string GenerateSecurePassword(int length)
    {
        const string validChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=[]{}|;:,.<>?";
        RNGCryptoServiceProvider rnd = new RNGCryptoServiceProvider();

        char[] passwordChars = new char[length];

        for (int i = 0; i < length; i++)
        {
            byte[] randomByte = new byte[1];
            rnd.GetBytes(randomByte);
            int idx = randomByte[0] % validChars.Length;
            passwordChars[i] = validChars[idx];
        }

        return new string(passwordChars);
    }
}