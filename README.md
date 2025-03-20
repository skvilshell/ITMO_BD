# ITMO_BD

Для курса Взаимодействие с БД

Все лабы раскиданы по папкам

## ENV

```conf
POSTGRES_USER = user
POSTGRES_PASSWORD = password
POSTGRES_DB = itmo
DATABASE_URL = postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@localhost:5432/${POSTGRES_DB}
```

## Запуск
1. Заполните `.env`
2. Запустите `docker compose up -d` для того, чтобы поднять 2 сервиса { postgres, pgadmin }
3. Выполните команду `npm run migration` (Должен быть установлен `node.js`)
4. Выполните команду для запыления начальными данными `npm run seed:init`
