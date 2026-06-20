package main

import (
	"crypto/rand"
	"fmt"
	"math/big"
)

func generatePassword(length int) (string, error) {
	const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=[]{}|;:,.<>?"
	password := make([]byte, length)

	for i := 0; i < length; i++ {
		index, err := rand.Int(rand.Reader, big.NewInt(int64(len(charset))))
		if err != nil {
			return "", err
		}
		password[i] = charset[index.Int64()]
	}

	return string(password), nil
}

func main() {
	password, err := generatePassword(16)
	if err != nil {
		fmt.Println("Error generating password:", err)
		return
	}

	fmt.Println("Password generated with go:", password)
}
