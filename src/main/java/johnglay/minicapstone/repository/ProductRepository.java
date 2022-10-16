package johnglay.minicapstone.repository;

import johnglay.minicapstone.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.UUID;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, BigInteger> {
    ProductEntity findByProductId(UUID productId);

    @Transactional
    void deleteByProductId(UUID productId);
}
