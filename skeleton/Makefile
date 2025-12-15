
default: classes submission

classes:
	cd parser && $(JFLEX_DIR)/bin/jflex --nobak Scanner.jflex
	cd parser && java -jar $(CUP_DIR)/java-cup-11b.jar -interface -parser Parser Parser.cup
	javac -cp $(CUP_DIR)/java-cup-11b.jar:. */*.java

submission:
	rm -f myproject.tgz
	tar czf myproject.tgz */*.java parser/Scanner.jflex parser/Parser.cup

clean:
	rm -f */*.class parser/Lexer.java parser/sym.java parser/Parser.java
