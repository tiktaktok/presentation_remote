package com.mathieuclement.android.teclado.app.actions;

import com.mathieuclement.api.presentation_remote.KeyCode;
import com.mathieuclement.api.presentation_remote.PresentationClient;

import java.io.IOException;

public class DownAction extends Action {
    public DownAction(PresentationClient receiver) {
        super(receiver);
    }

    @Override
    public void execute() throws ActionException {
        try {
            receiver.sendKey(KeyCode.DOWN);
        } catch (IOException e) {
            throw new ActionException("Could not press down arrow key", e);
        }
    }
}
