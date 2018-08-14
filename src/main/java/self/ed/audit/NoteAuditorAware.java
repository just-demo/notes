package self.ed.audit;

import org.springframework.data.domain.AuditorAware;
import org.springframework.stereotype.Component;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Optional;

import static java.util.Optional.of;

@Component
public class NoteAuditorAware implements AuditorAware<String> {
    public Optional<String> getCurrentAuditor() {
        try {
            return of(InetAddress.getLocalHost().getHostName());
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
    }
}