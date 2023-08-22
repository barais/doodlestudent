package fr.istic.tlc.dao;

import jakarta.enterprise.context.ApplicationScoped;

import fr.istic.tlc.domain.User;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

@ApplicationScoped
public class UserRepository implements PanacheRepository<User> {
}
