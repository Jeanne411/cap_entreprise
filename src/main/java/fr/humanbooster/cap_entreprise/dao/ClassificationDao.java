package fr.humanbooster.cap_entreprise.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.cap_entreprise.business.Classification;

public interface ClassificationDao extends JpaRepository<Classification, Long>{

}
