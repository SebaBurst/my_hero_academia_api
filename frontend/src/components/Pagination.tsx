import styles from '../styles/cardhero.module.css';


interface PaginationProps {
    totalPages: number;
    setCurrentPage: (page: number) => void;
    currentPage: number;
}

function Pagination(props: PaginationProps) {
    const { totalPages, setCurrentPage, currentPage } = props
    let pageNumbers = [];
    for (let i = 1; i <= totalPages; i++) {
        pageNumbers.push(i);
    }

    function changePage(page: number) {
        setCurrentPage(page);
    }



    return (
        <div className={styles.pagination}>
            {pageNumbers.map((page, index) => {
                return (
                    <button key={index} onClick={() => changePage(page)} className={page === currentPage ? styles.active : ''}>{page}</button>
                );
            })}
        </div>
    )
}

export default Pagination