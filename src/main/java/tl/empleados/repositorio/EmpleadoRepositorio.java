package tl.empleados.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import tl.empleados.modelo.Empleado;

public interface EmpleadoRepositorio extends JpaRepository<Empleado, Integer> {
}
