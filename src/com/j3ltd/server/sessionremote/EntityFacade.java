package com.j3ltd.server.sessionremote;

import com.j3ltd.server.entities.Person;
import com.j3ltd.server.exceptions.PersonEmailException;
import com.j3ltd.server.exceptions.PersonEntityExistsException;
import com.j3ltd.server.exceptions.PersonPasswordException;

@Remote
public interface EntityFacade {
	public Person createPerson(Person toCreate)
			throws PersonEntityExistsException, PersonPasswordException,
			PersonEmailException;

	public Person getPerson(String email) throws PersonEmailException;
}