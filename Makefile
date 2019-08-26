filename=resume
docker_exec=docker run --rm -t \
        -v ${CURDIR}:/resume \

clean:
	 rm -rf pdf && mkdir pdf
build_dockers: 
	docker build -f Dockerfile.linter -t latex-linter .
	docker build -f Dockerfile -t pdflatex  .
lint: 
	${docker_exec} latex-linter  /resume/sections/*.tex
pdf: 
	 ${docker_exec} pdflatex ${filename}.tex
