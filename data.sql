INSERT INTO accounts (account_id, name, followers)
VALUES
    (1, 'prueba', 1)
    ;

INSERT INTO tweets (tweet_id, question, text, account_id, origin, lang, weight, artificial)
VALUES
    (1, 'P: ¿Cómo bañarías a un elefante?','R: Al aire libre, con una manguera y mucho jabón!!', 1, 1, 'es', 0, 0),
    (2, 'P: ¿Cómo bañarías a un elefante?','R: Bañar a un elefante requiere un espacio amplio con agua y productos seguros para su piel.', 1, 1, 'es', 0, 1)
    -- Agrega más comandos INSERT según tus datos
    ;