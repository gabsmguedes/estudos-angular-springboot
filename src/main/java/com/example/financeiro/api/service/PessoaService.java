package com.example.financeiro.api.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.example.financeiro.api.model.Pessoa;
import com.example.financeiro.api.repository.PessoaRepository;

@Service
public class PessoaService {
	
	@Autowired
	private PessoaRepository pessoaRepository;

	public Pessoa update(Long id, Pessoa pessoa) {
		Pessoa pessoaSalva = findPessoaById(id);
		BeanUtils.copyProperties(pessoa, pessoaSalva, "id");
		return pessoaRepository.save(pessoaSalva);
	}

	public void updatePropriedadeAtivo(Long id, Boolean ativo) {
		Pessoa pessoaSalva = findPessoaById(id);
		pessoaSalva.setAtivo(ativo);
		pessoaRepository.save(pessoaSalva);
	}
	
	public Pessoa findPessoaById(Long id) {
		Pessoa pessoaSalva = pessoaRepository.findById(id).orElseThrow(() -> new EmptyResultDataAccessException(1));
		return pessoaSalva;
	}
}
