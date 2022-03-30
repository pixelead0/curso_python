from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# DATABASE_URL = "mysql+mysqlconnector://root:root@localhost:3306/crudfastapi"
DATABASE_URL = "mysql+mysqlconnector://toor:toor@db:3306/crudfastapi"

engine = create_engine(DATABASE_URL)

SessionLocal = sessionmaker(autocommit=False,autoflush=False,bind=engine)

Base = declarative_base()
