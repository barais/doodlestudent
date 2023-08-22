package fr.istic.tlc.dao;

import jakarta.enterprise.context.ApplicationScoped;

import fr.istic.tlc.domain.Comment;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

@ApplicationScoped
public class CommentRepository implements PanacheRepository<Comment> {
}
