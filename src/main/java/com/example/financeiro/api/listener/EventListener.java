package com.example.financeiro.api.listener;

import java.net.URI;

import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationListener;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.example.financeiro.api.event.RecursoEvent;

public class EventListener implements ApplicationListener<RecursoEvent>{

	@Override
	public void onApplicationEvent(RecursoEvent event) {
		HttpServletResponse response = event.getResponse();
		Long id = event.getId();
		
		addHeaderLocation(response, id);
	}

	private void addHeaderLocation(HttpServletResponse response, Long id) {
		URI uri = ServletUriComponentsBuilder.fromCurrentRequestUri().path("/{id}")
				.buildAndExpand(id).toUri();
		response.setHeader("Location", uri.toASCIIString());
	}
}
