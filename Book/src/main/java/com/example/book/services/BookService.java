package com.example.book.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.book.models.Book;
import com.example.book.repositories.BookRepository;

@Service
public class BookService {
    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
	
	
	// Update a book
    public Book updateBook(Book b) {
		Optional<Book> optionalBook = bookRepository.findById(b.getId());
		if(optionalBook.isPresent()) {
			Book b1 = optionalBook.get();
			b1.setTitle(b.getTitle());
			b1.setDescription(b.getDescription());
			b1.setLanguage(b.getLanguage());
			b1.setNumberOfPages(b.getNumberOfPages());
			System.out.println("Book will be updated");
            return bookRepository.save(b1);
        } else {
			System.out.println("No book with this id to be updated");
            return null;
        }
    }
	
	// Delete a book
    public void deleteBook(Long id) {
		if(bookRepository.existsById(id)) {
			bookRepository.deleteById(id);
			System.out.println("Book has been deleted");
        } else {
            System.out.println("No book with this id to be deleted");
        }
    }
}


