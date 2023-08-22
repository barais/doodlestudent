package fr.istic.tlc.dao;



import fr.istic.tlc.domain.Choice;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;


@ApplicationScoped
public class ChoiceRepository implements PanacheRepository<Choice> {
}
