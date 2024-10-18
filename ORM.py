from sqlalchemy import create_engine, Column, Integer, String, Float, Date
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker


engine = create_engine('postgresql://Tax_Calculator_owner:r7FNheHwE9Ba@ep-tiny-forest-a5tedngu.us-east-2.aws.neon.tech/Tax_Calculator?sslmode=require')
Base = declarative_base()


class IngresosTrabajo(Base):
    __tablename__ = 'ingresos_trabajo'
    id = Column(Integer, primary_key=True)
    empleado_id = Column(Integer)
    salario = Column(Float)
    bonificaciones = Column(Float)
    fecha = Column(Date)


Base.metadata.create_all(engine)

# sesion - interactuar
Session = sessionmaker(bind=engine)
session = Session()


nuevo_ingreso = IngresosTrabajo(empleado_id=3, salario=4000.00, bonificaciones=1000.00, fecha='2024-03-15')
session.add(nuevo_ingreso)
session.commit()


ingresos = session.query(IngresosTrabajo).filter_by(empleado_id=3).all()
for ingreso in ingresos:
    print(ingreso.salario, ingreso.bonificaciones)
