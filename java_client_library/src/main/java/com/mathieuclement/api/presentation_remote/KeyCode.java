package com.mathieuclement.api.presentation_remote;

public enum KeyCode {
    BACKSPACE(0x08),
    TAB(0x09),
    ENTER(0x0D),
    SPACE(0x20),
    PAGE_UP(0x21),
    PAGE_DOWN(0x22),
    END(0x23),
    HOME(0x24),
    LEFT(0x25),
    RIGHT(0x27),
    UP(0x26),
    DOWN(0x28),
    DELETE(0x2E),
    SLEEP(0x5F),
    DIGIT_0(0x30),
    DIGIT_1(0x31),
    DIGIT_2(0x32),
    DIGIT_3(0x33),
    DIGIT_4(0x34),
    DIGIT_5(0x35),
    DIGIT_6(0x36),
    DIGIT_7(0x37),
    DIGIT_8(0x38),
    DIGIT_9(0x39),
    A(0x41),
    B(0x42),
    C(0x43),
    D(0x44),
    E(0x45),
    F(0x46),
    G(0x47),
    H(0x48),
    I(0x49),
    J(0x4A),
    K(0x4B),
    L(0x4C),
    M(0x4D),
    N(0x4E),
    O(0x4F),
    P(0x50),
    Q(0x51),
    R(0x52),
    S(0x53),
    T(0x54),
    U(0x55),
    V(0x56),
    W(0x57),
    X(0x58),
    Y(0x59),
    Z(0x5A);


    private int vkCode; // Microsoft VK Code
                        // http://msdn.microsoft.com/en-us/library/windows/desktop/dd375731%28v=vs.85%29.aspx

    // Uppercase letters can be used as key code
    // or digits (matching the keys below the function keys)
    public KeyCode createFromLetter(char letter) {
        assert Character.isUpperCase(letter);
        return KeyCode.valueOf(String.format("%c", letter));
    }

    //

    /**
     * Create keycode from digit (matching the keys below the function keys)
     * @param digit digit
     * @return keycode matching the key below the function keys
     */
    public KeyCode createRowKeyCodeFromDigit(int digit) {
        return KeyCode.valueOf(String.format("DIGIT_%d", digit));
    }

    // Uppercase letters can be used as key code
    // or digits (matching the keys below the function keys)
    public KeyCode createKeypadKeyCodeFromDigit(int digit) {
        return KeyCode.valueOf(String.format("DIGIT_%d", digit));
    }

    KeyCode(int vkCode) {
        this.vkCode = vkCode;
    }
}
